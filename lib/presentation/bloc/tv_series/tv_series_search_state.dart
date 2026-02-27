part of 'tv_series_search_cubit.dart';

@freezed
abstract class TvSeriesSearchState with _$TvSeriesSearchState {
  const factory TvSeriesSearchState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<TvSeries> searchResult,
    @Default('') String message,
  }) = _TvSeriesSearchState;
}