import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';

part 'popular_movies_state.freezed.dart';

@freezed
abstract class PopularMoviesState with _$PopularMoviesState {
  const factory PopularMoviesState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<Movie> movies,
    @Default('') String message,
  }) = _PopularMoviesState;
}