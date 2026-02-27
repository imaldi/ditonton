import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_detail.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_recommendations.dart';
import 'package:ditonton/domain/usecases/movie/get_watchlist_status.dart';
import 'package:ditonton/domain/usecases/movie/remove_watchlist.dart';
import 'package:ditonton/domain/usecases/movie/save_watchlist.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movie_detail_state.dart';

class MovieDetailCubit extends Cubit<MovieDetailState> {
  final GetMovieDetail getMovieDetail;
  final GetMovieRecommendations getMovieRecommendations;
  final GetWatchListStatus getWatchListStatus;
  final SaveWatchlist saveWatchlist;
  final RemoveWatchlist removeWatchlist;

  MovieDetailCubit({
    required this.getMovieDetail,
    required this.getMovieRecommendations,
    required this.getWatchListStatus,
    required this.saveWatchlist,
    required this.removeWatchlist,
  }) : super(const MovieDetailState());

  Future<void> fetchMovieDetail(int id) async {
    final oldRecommendations = state.recommendations;
    emit(state.copyWith(
      movieState: RequestState.Loading,
      message: '',
    ));

    final detailResult = await getMovieDetail.execute(id);
    final recommendationResult = await getMovieRecommendations.execute(id);

    detailResult.fold(
          (failure) {
        emit(state.copyWith(
          movieState: RequestState.Error,
          message: failure.message,
          recommendations: oldRecommendations,
        ));
      },
          (movie) {
        emit(state.copyWith(
          movieState: RequestState.Loaded,
          movie: movie,
          message: '',
        ));

        recommendationResult.fold(
              (failure) {
            emit(state.copyWith(
              recommendationState: RequestState.Error,
              message: failure.message,
            ));
          },
              (movies) {
            emit(state.copyWith(
              recommendationState: RequestState.Loaded,
              recommendations: movies,
            ));
          },
        );
      },
    );
  }

  // Future<void> addWatchlist(MovieDetail movie) async {
  //   final result = await saveWatchlist.execute(movie);
  //
  //   final newMessage = result.fold(
  //         (failure) => failure.message,
  //         (success) => success ?? 'Added to Watchlist',
  //   );
  //
  //   emit(state.copyWith(watchlistMessage: newMessage));
  //
  //   await loadWatchlistStatus(movie.id);
  // }

  Future<void> addWatchlist(MovieDetail movie) async {
    final saveResult = await saveWatchlist.execute(movie);

    final saveMessage = saveResult.fold(
          (failure) => failure.message,
          (success) => success ?? 'Added to Watchlist',
    );

    final status = await getWatchListStatus.execute(movie.id);

    emit(state.copyWith(
      watchlistMessage: saveMessage,
      isAddedToWatchlist: status,
    ));
  }

  Future<void> removeFromWatchlist(MovieDetail movie) async {
    final saveResult = await removeWatchlist.execute(movie);

    final newMessage = saveResult.fold(
          (failure) => failure.message,
          (success) => success ?? 'Removed from Watchlist',
    );

    final status = await getWatchListStatus.execute(movie.id);


    emit(state.copyWith(
        watchlistMessage: newMessage,
        isAddedToWatchlist: status,
    ));

    // await loadWatchlistStatus(movie.id);
  }

  Future<void> loadWatchlistStatus(int id) async {
    final result = await getWatchListStatus.execute(id);
    emit(state.copyWith(isAddedToWatchlist: result));
  }
}