part of 'tv_series_detail_cubit.dart';

@freezed
abstract class TvSeriesDetailState with _$TvSeriesDetailState {
  const factory TvSeriesDetailState({
    @Default(RequestState.Empty) RequestState tvSeriesState,
    TvSeriesDetail? tvSeries,
    @Default(RequestState.Empty) RequestState recommendationState,
    @Default([]) List<TvSeries> recommendations,
    @Default('') String message,
    @Default(false) bool isAddedToWatchlist,
    @Default('') String watchlistMessage,
  }) = _TvSeriesDetailState;
}