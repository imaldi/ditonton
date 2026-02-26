import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';

part 'movie_search_state.freezed.dart';

@freezed
abstract class MovieSearchState with _$MovieSearchState {
  const factory MovieSearchState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<Movie> searchResult,
    @Default('') String message,
  }) = _MovieSearchState;
}