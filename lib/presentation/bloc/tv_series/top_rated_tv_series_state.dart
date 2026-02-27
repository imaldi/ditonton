part of 'top_rated_tv_series_cubit.dart';

@freezed
abstract class TopRatedTvSeriesState with _$TopRatedTvSeriesState {
  const factory TopRatedTvSeriesState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<TvSeries> tvSeries,
    @Default('') String message,
  }) = _TopRatedTvSeriesState;
}