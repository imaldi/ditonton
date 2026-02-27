import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_top_rated_movies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'top_rated_movies_state.dart';

class TopRatedMoviesCubit extends Cubit<TopRatedMoviesState> {
  final GetTopRatedMovies getTopRatedMovies;

  TopRatedMoviesCubit({required this.getTopRatedMovies})
      : super(const TopRatedMoviesState());

  Future<void> fetchTopRatedMovies() async {
    emit(state.copyWith(
      state: RequestState.Loading,
      message: '',
    ));

    final result = await getTopRatedMovies.execute();

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
          movies: moviesData,
          message: '',
        ));
      },
    );
  }
}