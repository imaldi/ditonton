part of 'popular_tv_series_cubit.dart';

@freezed
abstract class PopularTvSeriesState with _$PopularTvSeriesState {
  const factory PopularTvSeriesState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<TvSeries> tvSeries,
    @Default('') String message,
  }) = _PopularTvSeriesState;
}