part of 'tv_series_list_cubit.dart';

@freezed
abstract class TvSeriesListState with _$TvSeriesListState {
  const factory TvSeriesListState({
    @Default(RequestState.Empty) RequestState nowPlayingState,
    @Default([]) List<TvSeries> nowPlayingTvSeries,
    @Default(RequestState.Empty) RequestState popularState,
    @Default([]) List<TvSeries> popularTvSeries,
    @Default(RequestState.Empty) RequestState topRatedState,
    @Default([]) List<TvSeries> topRatedTvSeries,
    @Default('') String message,
  }) = _TvSeriesListState;
}