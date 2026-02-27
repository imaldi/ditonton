import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_detail.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_recommendations.dart';
import 'package:ditonton/domain/usecases/movie/get_watchlist_status.dart';
import 'package:ditonton/domain/usecases/movie/remove_watchlist.dart';
import 'package:ditonton/domain/usecases/movie/save_watchlist.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/movie/movie_detail_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/movie_detail_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'movie_detail_cubit_test.mocks.dart';

@GenerateMocks([
  GetMovieDetail,
  GetMovieRecommendations,
  GetWatchListStatus,
  SaveWatchlist,
  RemoveWatchlist,
])
void main() {
  late MovieDetailCubit cubit;
  late MockGetMovieDetail mockGetMovieDetail;
  late MockGetMovieRecommendations mockGetMovieRecommendations;
  late MockGetWatchListStatus mockGetWatchlistStatus;
  late MockSaveWatchlist mockSaveWatchlist;
  late MockRemoveWatchlist mockRemoveWatchlist;

  final tId = 1;

  final tMovie = Movie(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalTitle: 'originalTitle',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    title: 'title',
    video: false,
    voteAverage: 1,
    voteCount: 1,
  );
  final tMovies = <Movie>[tMovie];


  setUp(() {
    mockGetMovieDetail = MockGetMovieDetail();
    mockGetMovieRecommendations = MockGetMovieRecommendations();
    mockGetWatchlistStatus = MockGetWatchListStatus();
    mockSaveWatchlist = MockSaveWatchlist();
    mockRemoveWatchlist = MockRemoveWatchlist();

    cubit = MovieDetailCubit(
      getMovieDetail: mockGetMovieDetail,
      getMovieRecommendations: mockGetMovieRecommendations,
      getWatchListStatus: mockGetWatchlistStatus,
      saveWatchlist: mockSaveWatchlist,
      removeWatchlist: mockRemoveWatchlist,
    );

    provideDummy<Either<Failure, MovieDetail>>(Right(testMovieDetail));
    provideDummy<Either<Failure, List<Movie>>>(Right(tMovies));
    provideDummy<Either<Failure, String>>(const Right('Success'));
    provideDummy<Either<Failure, bool>>(const Right(true));
    // tambah Left dummies kalau perlu
  });

  tearDown(() => cubit.close());

  group('fetchMovieDetail', () {
    blocTest<MovieDetailCubit, MovieDetailState>(
      'should emit Loading then Loaded with movie and recommendations when successful',
      build: () {
        when(mockGetMovieDetail.execute(tId))
            .thenAnswer((_) async => Right(testMovieDetail));
        when(mockGetMovieRecommendations.execute(tId))
            .thenAnswer((_) async => Right(tMovies));
        return cubit;
      },
      act: (cubit) => cubit.fetchMovieDetail(tId),
      expect: () => [
        // 1,2
        MovieDetailState(
            movieState: RequestState.Loading,
            message: '',
        ),
        MovieDetailState(
            movieState: RequestState.Loaded,
            movie: testMovieDetail,
            recommendationState: RequestState.Empty,
            recommendations: [],
            message: '',
            isAddedToWatchlist: false,
            watchlistMessage: ''),
        MovieDetailState(
          movieState: RequestState.Loaded,
          movie: testMovieDetail,
          recommendationState: RequestState.Loaded,
          recommendations: tMovies
        )
        // predicate<MovieDetailState>((s) =>
        // s.movieState == RequestState.Loading && s.message == ''),
        // predicate<MovieDetailState>((s) =>
        // s.movieState == RequestState.Loaded &&
        //     s.movie == testMovieDetail &&
        //     s.recommendationState == RequestState.Loaded &&
        //     s.recommendations == tMovies),
      ],
      verify: (_) {
        verify(mockGetMovieDetail.execute(tId)).called(1);
        verify(mockGetMovieRecommendations.execute(tId)).called(1);
      },
    );

    blocTest<MovieDetailCubit, MovieDetailState>(
      'should emit Error when detail fails, preserve recommendations if any',
      build: () {
        when(mockGetMovieDetail.execute(tId))
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        when(mockGetMovieRecommendations.execute(tId))
            .thenAnswer((_) async => Right(tMovies));
        return cubit;
      },
      seed: () => MovieDetailState(recommendations: tMovies), // simulate previous
      act: (cubit) => cubit.fetchMovieDetail(tId),
      expect: () => [
        MovieDetailState(
          movieState: RequestState.Loading,
          recommendations: tMovies,
        ),
        MovieDetailState(
          movieState: RequestState.Error,
          message: 'Server Failure',
          recommendations: tMovies
        )
        // predicate<MovieDetailState>((s) => s.movieState == RequestState.Loading),
        // predicate<MovieDetailState>((s) =>
        // s.movieState == RequestState.Error &&
        //     s.message == 'Server Failure' &&
        //     s.recommendations == tMovies), // preserved
      ],
    );

    // Test rekomendasi error saja (detail sukses)
    blocTest<MovieDetailCubit, MovieDetailState>(
      'should set recommendation error when recommendations fail',
      build: () {
        when(mockGetMovieDetail.execute(tId))
            .thenAnswer((_) async => Right(testMovieDetail));
        when(mockGetMovieRecommendations.execute(tId))
            .thenAnswer((_) async => Left(ServerFailure('Failed')));
        return cubit;
      },
      act: (cubit) => cubit.fetchMovieDetail(tId),
      expect: () => containsAll([
        predicate<MovieDetailState>((s) =>
        s.movieState == RequestState.Loaded && s.movie == testMovieDetail),
        predicate<MovieDetailState>((s) =>
        s.recommendationState == RequestState.Error && s.message == 'Failed'),
      ]),
    );
  });

  group('watchlist', () {
    blocTest<MovieDetailCubit, MovieDetailState>(
      'should load watchlist status',
      build: () {
        when(mockGetWatchlistStatus.execute(tId)).thenAnswer((_) async => true);
        return cubit;
      },
      act: (cubit) => cubit.loadWatchlistStatus(tId),
      expect: () => [
        predicate<MovieDetailState>((s) => s.isAddedToWatchlist == true),
      ],
    );

    blocTest<MovieDetailCubit, MovieDetailState>(
      'should add to watchlist and update status/message',
      build: () {
        when(mockSaveWatchlist.execute(testMovieDetail))
            .thenAnswer((_) async => const Right('Added to Watchlist'));
        when(mockGetWatchlistStatus.execute(tId)).thenAnswer((_) async => true);
        return cubit;
      },
      act: (cubit) => cubit.addWatchlist(testMovieDetail),
      seed: () => MovieDetailState(
        watchlistMessage: ''
      ),
      expect: () => [
        // MovieDetailState(
        //   watchlistMessage: '',
        //   isAddedToWatchlist: false,
        // ),
        MovieDetailState(
          watchlistMessage: 'Added to Watchlist',
          isAddedToWatchlist: true,
        ),
        // predicate<MovieDetailState>((s) =>
        // s.watchlistMessage == 'Added to Watchlist' &&
        //     s.isAddedToWatchlist == true),
      ],
      verify: (_) {
        verify(mockSaveWatchlist.execute(testMovieDetail)).called(1);
        verify(mockGetWatchlistStatus.execute(tId)).called(1);
      },
    );

    // Serupa untuk removeFromWatchlist
  });
}