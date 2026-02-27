import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';

part 'watchlist_movies_state.freezed.dart';

@freezed
abstract class WatchlistMoviesState with _$WatchlistMoviesState {
  const factory WatchlistMoviesState({
    @Default(RequestState.Empty) RequestState state,
    @Default([]) List<Movie> watchlistMovies,
    @Default('') String message,
  }) = _WatchlistMoviesState;
}