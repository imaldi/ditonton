import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/search_movies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movie_search_state.dart';

class MovieSearchCubit extends Cubit<MovieSearchState> {
  final SearchMovies searchMovies;

  MovieSearchCubit({required this.searchMovies})
      : super(const MovieSearchState());

  Future<void> fetchMovieSearch(String query) async {
    if (query.trim().isEmpty) {
      emit(state.copyWith(
        state: RequestState.Empty,
        searchResult: [],
        message: '',
      ));
      return;
    }

    emit(state.copyWith(
      state: RequestState.Loading,
      message: '',
    ));

    final result = await searchMovies.execute(query);

    result.fold(
          (failure) {
        emit(state.copyWith(
          state: RequestState.Error,
          message: failure.message,
        ));
      },
          (movies) {
        emit(state.copyWith(
          state: RequestState.Loaded,
          searchResult: movies,
          message: '',
        ));
      },
    );
  }

  // Opsional: method untuk clear search
  void clearSearch() {
    emit(state.copyWith(
      state: RequestState.Empty,
      searchResult: [],
      message: '',
    ));
  }
}