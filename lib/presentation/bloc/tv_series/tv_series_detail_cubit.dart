import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_detail.dart';
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_recommendations.dart';
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_tv_series_status.dart';
import 'package:ditonton/domain/usecases/tv_series/remove_watchlist_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/save_watchlist_tv_series.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_detail_state.dart';
part 'tv_series_detail_cubit.freezed.dart';

class TvSeriesDetailCubit extends Cubit<TvSeriesDetailState> {
  final GetTvSeriesDetail getTvSeriesDetail;
  final GetTvSeriesRecommendations getTvSeriesRecommendations;
  final GetWatchlistTvSeriesStatus getWatchListStatus;
  final SaveWatchlistTvSeries saveWatchlist;
  final RemoveWatchlistTvSeries removeWatchlist;

  TvSeriesDetailCubit({
    required this.getTvSeriesDetail,
    required this.getTvSeriesRecommendations,
    required this.getWatchListStatus,
    required this.saveWatchlist,
    required this.removeWatchlist,
  }) : super(const TvSeriesDetailState());

  Future<void> fetchTvSeriesDetail(int id) async {
    final oldRecommendations = state.recommendations;
    emit(state.copyWith(
      tvSeriesState: RequestState.Loading,
      message: '',
    ));

    final detailResult = await getTvSeriesDetail.execute(id);
    final recommendationResult = await getTvSeriesRecommendations.execute(id);

    detailResult.fold(
          (failure) {
        emit(state.copyWith(
          tvSeriesState: RequestState.Error,
          message: failure.message,
          recommendations: oldRecommendations,
        ));
      },
          (tvSeries) {
        emit(state.copyWith(
          tvSeriesState: RequestState.Loaded,
          tvSeries: tvSeries,
          message: '',
        ));

        recommendationResult.fold(
              (failure) {
            emit(state.copyWith(
              recommendationState: RequestState.Error,
              message: failure.message,
            ));
          },
              (tvSeriesList) {
            emit(state.copyWith(
              recommendationState: RequestState.Loaded,
              recommendations: tvSeriesList,
            ));
          },
        );
      },
    );
  }

  Future<void> addWatchlist(TvSeriesDetail tvSeries) async {
    final result = await saveWatchlist.execute(tvSeries);

    final newMessage = result.fold(
          (failure) => failure.message,
          (success) => success ?? 'Added to Watchlist',
    );


    final status = await getWatchListStatus.execute(tvSeries.id);

    emit(state.copyWith(
      watchlistMessage: newMessage,
      isAddedToWatchlist: status,
    ));
  }

  Future<void> removeFromWatchlist(TvSeriesDetail tvSeries) async {
    final result = await removeWatchlist.execute(tvSeries);

    final newMessage = result.fold(
          (failure) => failure.message,
          (success) => success ?? 'Removed from Watchlist',
    );

    emit(state.copyWith(watchlistMessage: newMessage));

    await loadWatchlistStatus(tvSeries.id);
  }

  Future<void> loadWatchlistStatus(int id) async {
    final result = await getWatchListStatus.execute(id);
    emit(state.copyWith(isAddedToWatchlist: result));
  }
}