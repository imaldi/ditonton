import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_watchlist_movies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'watchlist_movies_state.dart';

class WatchlistMoviesCubit extends Cubit<WatchlistMoviesState> {
  final GetWatchlistMovies getWatchlistMovies;

  WatchlistMoviesCubit({required this.getWatchlistMovies})
      : super(const WatchlistMoviesState());

  Future<void> fetchWatchlistMovies() async {
    emit(state.copyWith(
      state: RequestState.Loading,
      message: '',
    ));

    final result = await getWatchlistMovies.execute();

    result.fold(
          (failure) {
        emit(state.copyWith(
          state: RequestState.Error,
          message: failure.message,
        ));
      },
          (moviesData) {
        emit(state.copyWith(
          state: RequestState.Loaded,
          watchlistMovies: moviesData,
          message: '',
        ));
      },
    );
  }
}