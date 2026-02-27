import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_tv_series.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_tv_series_state.dart';
part 'watchlist_tv_series_cubit.freezed.dart';

class WatchlistTvSeriesCubit extends Cubit<WatchlistTvSeriesState> {
  final GetWatchlistTvSeries getWatchlistTvSeries;

  WatchlistTvSeriesCubit({required this.getWatchlistTvSeries})
      : super(const WatchlistTvSeriesState());

  Future<void> fetchWatchlistTvSeries() async {
    emit(state.copyWith(
      state: RequestState.Loading,
      message: '',
    ));

    final result = await getWatchlistTvSeries.execute();

    result.fold(
          (failure) {
        emit(state.copyWith(
          state: RequestState.Error,
          message: failure.message,
        ));
      },
          (tvSeriesData) {
        emit(state.copyWith(
          state: RequestState.Loaded,
          watchlistTvSeries: tvSeriesData,
          message: '',
        ));
      },
    );
  }
}