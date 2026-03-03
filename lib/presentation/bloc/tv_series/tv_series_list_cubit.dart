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
  }) : super(const TvSeriesListState.initial());

  Future<void> fetchNowPlayingTvSeries() async {
    final oldNowPlaying = state.maybeWhen(loaded: (now, _, __) => now, orElse: () => <TvSeries>[]);
    final oldPop = state.maybeWhen(loaded: (_, pop, __) => pop, orElse: () => <TvSeries>[]);
    final oldTopRated = state.maybeWhen(loaded: (_, __, top) => top, orElse: () => <TvSeries>[]);

    emit(const TvSeriesListState.loading(category: 'now_playing'));

    final result = await getNowPlayingTvSeries.execute();

    result.fold((failure) => emit(TvSeriesListState.error(failure.message)), (tvSeriesData) {
      state.maybeWhen(
        loaded: (nowPlaying, popular, topRated) {
          emit(
            TvSeriesListState.loaded(
              nowPlayingTvSeries: tvSeriesData,
              popularTvSeries: popular,
              topRatedTvSeries: topRated,
            ),
          );
        },
        orElse: () {
          emit(
            TvSeriesListState.loaded(
              nowPlayingTvSeries: tvSeriesData,
              popularTvSeries: oldPop,
              topRatedTvSeries: oldTopRated,
            ),
          );
        },
      );
    });
  }

  Future<void> fetchPopularTvSeries() async {
    final oldNowPlaying = state.maybeWhen(loaded: (now, _, __) => now, orElse: () => <TvSeries>[]);
    // final oldPop = state.maybeWhen(loaded: (_, pop, __) => pop, orElse: () => <TvSeries>[]);
    final oldTopRated = state.maybeWhen(loaded: (_, __, top) => top, orElse: () => <TvSeries>[]);
    emit(const TvSeriesListState.loading(category: 'popular'));

    final result = await getPopularTvSeries.execute();

    result.fold((failure) => emit(TvSeriesListState.error(failure.message)), (tvSeriesData) {
      emit(
        state.maybeMap(
          loaded: (s) => s.copyWith(popularTvSeries: tvSeriesData),

          orElse: () => TvSeriesListState.loaded(
            nowPlayingTvSeries: oldNowPlaying,
            popularTvSeries: tvSeriesData,
            topRatedTvSeries: oldTopRated,
          ),
        ),
      );
      // state.maybeWhen(
      //   loaded: (nowPlaying, popular, topRated) {
      //     emit(TvSeriesListState.loaded(
      //       nowPlayingTvSeries: oldNowPlaying,
      //       popularTvSeries: tvSeriesData,
      //       topRatedTvSeries: oldTopRated,
      //     ));
      //     // return s.copyWith(popularTvSeries: tvSeriesData);
      //   },
      //   orElse: () {
      //     emit(TvSeriesListState.loaded(
      //       nowPlayingTvSeries: oldNowPlaying,
      //       popularTvSeries: tvSeriesData,
      //       topRatedTvSeries: oldTopRated,
      //     ));
      //   },
      // );
      ;
    });
  }

  Future<void> fetchTopRatedTvSeries() async {
    emit(const TvSeriesListState.loading(category: 'top_rated'));

    // emit(state.copyWith(topRatedState: RequestState.Loading, message: ''));

    final result = await getTopRatedTvSeries.execute();

    result.fold((failure) => emit(TvSeriesListState.error(failure.message)), (tvSeriesData) {
      state.maybeWhen(
        loaded: (nowPlaying, popular, topRated) {
          emit(
            TvSeriesListState.loaded(
              nowPlayingTvSeries: nowPlaying,
              popularTvSeries: popular,
              topRatedTvSeries: tvSeriesData,
            ),
          );
        },
        orElse: () {
          emit(TvSeriesListState.loaded(topRatedTvSeries: tvSeriesData));
        },
      );
    });
  }

  Future<void> fetchAll() async {
    await Future.wait([fetchNowPlayingTvSeries(), fetchPopularTvSeries(), fetchTopRatedTvSeries()]);
  }
}
