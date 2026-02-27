import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';

part 'top_rated_movies_state.freezed.dart';

@freezed
abstract class TopRatedMoviesState with _$TopRatedMoviesState {
  const factory TopRatedMoviesState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<Movie> movies,
    @Default('') String message,
  }) = _TopRatedMoviesState;
}