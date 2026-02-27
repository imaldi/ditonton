import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_now_playing_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_popular_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_top_rated_tv_series.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_list_state.dart';
part 'tv_series_list_cubit.freezed.dart';

class TvSeriesListCubit extends Cubit<TvSeriesListState> {
  final GetNowPlayingTvSeries getNowPlayingTvSeries;
  final GetPopularTvSeries getPopularTvSeries;
  final GetTopRatedTvSeries getTopRatedTvSeries;

  TvSeriesListCubit({
    required this.getNowPlayingTvSeries,
    required this.getPopularTvSeries,
    required this.getTopRatedTvSeries,
  }) : super(const TvSeriesListState());

  Future<void> fetchNowPlayingTvSeries() async {
    emit(state.copyWith(nowPlayingState: RequestState.Loading, message: ''));

    final result = await getNowPlayingTvSeries.execute();

    result.fold(
          (failure) {
        emit(state.copyWith(
          nowPlayingState: RequestState.Error,
          message: failure.message,
        ));
      },
          (tvSeriesData) {
        emit(state.copyWith(
          nowPlayingState: RequestState.Loaded,
          nowPlayingTvSeries: tvSeriesData,
          message: '',
        ));
      },
    );
  }

  Future<void> fetchPopularTvSeries() async {
    emit(state.copyWith(popularState: RequestState.Loading, message: ''));

    final result = await getPopularTvSeries.execute();

    result.fold(
          (failure) {
        emit(state.copyWith(
          popularState: RequestState.Error,
          message: failure.message,
        ));
      },
          (tvSeriesData) {
        emit(state.copyWith(
          popularState: RequestState.Loaded,
          popularTvSeries: tvSeriesData,
          message: '',
        ));
      },
    );
  }

  Future<void> fetchTopRatedTvSeries() async {
    emit(state.copyWith(topRatedState: RequestState.Loading, message: ''));

    final result = await getTopRatedTvSeries.execute();

    result.fold(
          (failure) {
        emit(state.copyWith(
          topRatedState: RequestState.Error,
          message: failure.message,
        ));
      },
          (tvSeriesData) {
        emit(state.copyWith(
          topRatedState: RequestState.Loaded,
          topRatedTvSeries: tvSeriesData,
          message: '',
        ));
      },
    );
  }

  Future<void> fetchAll() async {
    await Future.wait([
      fetchNowPlayingTvSeries(),
      fetchPopularTvSeries(),
      fetchTopRatedTvSeries(),
    ]);
  }
}