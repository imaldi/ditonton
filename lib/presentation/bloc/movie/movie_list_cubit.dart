import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_now_playing_movies.dart';
import 'package:ditonton/domain/usecases/movie/get_popular_movies.dart';
import 'package:ditonton/domain/usecases/movie/get_top_rated_movies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movie_list_state.dart';

class MovieListCubit extends Cubit<MovieListState> {
  final GetNowPlayingMovies getNowPlayingMovies;
  final GetPopularMovies getPopularMovies;
  final GetTopRatedMovies getTopRatedMovies;

  MovieListCubit({
    required this.getNowPlayingMovies,
    required this.getPopularMovies,
    required this.getTopRatedMovies,
  }) : super(const MovieListState.initial());

  Future<void> fetchNowPlayingMovies() async {
    emit(const MovieListState.loading(category: 'now_playing'));

    final result = await getNowPlayingMovies.execute();
    result.fold(
          (failure) => emit(MovieListState.error(failure.message)),
          (movies) {
        state.maybeWhen(
          loaded: (nowPlaying, popular, topRated) {
            emit(MovieListState.loaded(
              nowPlayingMovies: movies,
              popularMovies: popular,
              topRatedMovies: topRated,
            ));
          },
          orElse: () {
            emit(MovieListState.loaded(nowPlayingMovies: movies));
          },
        );
      },
    );
  }

  Future<void> fetchPopularMovies() async {
    final oldNowPlaying = state.maybeWhen(
      loaded: (now, _, __) => now,
      orElse: () => <Movie>[],
    );
    final oldTopRated = state.maybeWhen(
      loaded: (_, __, top) => top,
      orElse: () => <Movie>[],
    );

    emit(const MovieListState.loading(category: 'popular'));

    final result = await getPopularMovies.execute();

    result.fold(
          (failure) => emit(MovieListState.error(failure.message)),
          (newPopular) {
        emit(
          state.maybeMap(
            loaded: (s) => s.copyWith(popularMovies: newPopular),
            orElse: () => MovieListState.loaded(
              nowPlayingMovies: oldNowPlaying,
              popularMovies: newPopular,
              topRatedMovies: oldTopRated,
            ),
          ),
        );
      },
    );
  }

  Future<void> fetchTopRatedMovies() async {
    emit(const MovieListState.loading(category: 'top_rated'));

    final result = await getTopRatedMovies.execute();
    result.fold(
          (failure) => emit(MovieListState.error(failure.message)),
          (movies) {
        state.maybeWhen(
          loaded: (nowPlaying, popular, topRated) {
            emit(MovieListState.loaded(
              nowPlayingMovies: nowPlaying,
              popularMovies: popular,
              topRatedMovies: movies,
            ));
          },
          orElse: () {
            emit(MovieListState.loaded(topRatedMovies: movies));
          },
        );
      },
    );
  }

  /// Memuat semua kategori sekaligus (dipanggil saat halaman pertama kali dibuka)
  Future<void> fetchAll() async {
    // emit(const MovieListState.loading());

    await Future.wait([
      fetchNowPlayingMovies(),
      fetchPopularMovies(),
      fetchTopRatedMovies(),
    ]);
  }
}