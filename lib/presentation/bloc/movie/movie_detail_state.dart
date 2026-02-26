import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';

part 'movie_detail_state.freezed.dart';

@freezed
abstract class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    @Default(RequestState.Empty) RequestState movieState,
    MovieDetail? movie,
    @Default(RequestState.Empty) RequestState recommendationState,
    @Default([]) List<Movie> recommendations,
    @Default('') String message,
    @Default(false) bool isAddedToWatchlist,
    @Default('') String watchlistMessage,
  }) = _MovieDetailState;
}