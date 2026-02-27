part of 'watchlist_tv_series_cubit.dart';

@freezed
abstract class WatchlistTvSeriesState with _$WatchlistTvSeriesState {
  const factory WatchlistTvSeriesState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<TvSeries> watchlistTvSeries,
    @Default('') String message,
  }) = _WatchlistTvSeriesState;
}