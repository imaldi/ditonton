import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';

part 'movie_list_state.freezed.dart';

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState.initial() = _Initial;

  const factory MovieListState.loading({
    String? category, // now_playing, popular, top_rated, atau null jika semua
  }) = _Loading;

  const factory MovieListState.loaded({
    @Default([]) List<Movie> nowPlayingMovies,
    @Default([]) List<Movie> popularMovies,
    @Default([]) List<Movie> topRatedMovies,
  }) = _Loaded;

  const factory MovieListState.error(String message) = _Error;
}