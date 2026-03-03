part of 'tv_series_list_cubit.dart';

@freezed
abstract class TvSeriesListState with _$TvSeriesListState {

  const factory TvSeriesListState.initial() = _Initial;

  const factory TvSeriesListState.loading({
    String? category, // now_playing, popular, top_rated, atau null jika semua
  }) = _Loading;

  const factory TvSeriesListState.loaded({
    @Default([]) List<TvSeries> nowPlayingTvSeries,
    @Default([]) List<TvSeries> popularTvSeries,
    @Default([]) List<TvSeries> topRatedTvSeries,
  }) = _Loaded;

  const factory TvSeriesListState.error(String message) = _Error;
  // const factory TvSeriesListState({
  //   @Default(RequestState.Empty) RequestState nowPlayingState,
  //   @Default([]) List<TvSeries> nowPlayingTvSeries,
  //   @Default(RequestState.Empty) RequestState popularState,
  //   @Default([]) List<TvSeries> popularTvSeries,
  //   @Default(RequestState.Empty) RequestState topRatedState,
  //   @Default([]) List<TvSeries> topRatedTvSeries,
  //   @Default('') String message,
  // }) = _TvSeriesListState;
}