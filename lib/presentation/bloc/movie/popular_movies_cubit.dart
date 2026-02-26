import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/usecases/movie/get_popular_movies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'popular_movies_state.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  final GetPopularMovies getPopularMovies;

  PopularMoviesCubit({required this.getPopularMovies})
      : super(const PopularMoviesState());

  Future<void> fetchPopularMovies() async {
    emit(state.copyWith(
      state: RequestState.Loading,
      message: '',
    ));

    final result = await getPopularMovies.execute();

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