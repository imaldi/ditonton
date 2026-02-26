import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_now_playing_movies.dart';
import 'package:ditonton/domain/usecases/movie/get_popular_movies.dart';
import 'package:ditonton/domain/usecases/movie/get_top_rated_movies.dart';
import 'package:ditonton/presentation/bloc/movie/movie_list_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/movie_list_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_list_cubit_test.mocks.dart';

@GenerateMocks([GetNowPlayingMovies, GetPopularMovies, GetTopRatedMovies])
void main() {
  late MovieListCubit cubit;
  late MockGetNowPlayingMovies mockGetNowPlayingMovies;
  late MockGetPopularMovies mockGetPopularMovies;
  late MockGetTopRatedMovies mockGetTopRatedMovies;

  final tMovie = Movie(
    adult: false,
    backdropPath: '/backdrop.jpg',
    genreIds: const [28, 12],
    id: 1,
    originalTitle: 'Original Title',
    overview: 'Overview here',
    popularity: 100.0,
    posterPath: '/poster.jpg',
    releaseDate: '2023-01-01',
    title: 'Movie Title',
    video: false,
    voteAverage: 8.0,
    voteCount: 2000,
  );

  final tMovieList = <Movie>[tMovie];

  setUp(() {
    provideDummy<Either<Failure, String>>(const Right('Success'));
    provideDummy<Either<Failure, List<Movie>>>(Right(tMovieList));
    provideDummy<Either<Failure, List<Movie>>>(Left(ServerFailure('dummy error')));

    mockGetNowPlayingMovies = MockGetNowPlayingMovies();
    mockGetPopularMovies = MockGetPopularMovies();
    mockGetTopRatedMovies = MockGetTopRatedMovies();

    cubit = MovieListCubit(
      getNowPlayingMovies: mockGetNowPlayingMovies,
      getPopularMovies: mockGetPopularMovies,
      getTopRatedMovies: mockGetTopRatedMovies,
    );
  });

  tearDown(() {
    cubit.close();
  });

  group('initial state', () {
    test('should be initial', () {
      expect(cubit.state, const MovieListState.initial());
    });
  });

  group('fetchNowPlayingMovies', () {
    blocTest<MovieListCubit, MovieListState>(
      'should emit [Loading, Loaded] when data is gotten successfully',
      build: () {
        when(mockGetNowPlayingMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return cubit;
      },
      act: (cubit) => cubit.fetchNowPlayingMovies(),
      expect: () => [
        const MovieListState.loading(category: 'now_playing'),
        MovieListState.loaded(nowPlayingMovies: tMovieList),
      ],
      verify: (_) {
        verify(mockGetNowPlayingMovies.execute()).called(1);
      },
    );

    blocTest<MovieListCubit, MovieListState>(
      'should emit [Loading, Error] when request fails',
      build: () {
        when(mockGetNowPlayingMovies.execute())
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchNowPlayingMovies(),
      expect: () => [
        const MovieListState.loading(category: 'now_playing'),
        const MovieListState.error('Server Failure'),
      ],
      verify: (_) {
        verify(mockGetNowPlayingMovies.execute()).called(1);
      },
    );
  });

  group('fetchPopularMovies', () {
    blocTest<MovieListCubit, MovieListState>(
      'should emit [Loading, Loaded] and preserve other categories',
      build: () {
        when(mockGetPopularMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return cubit;
      },
      seed: () => MovieListState.loaded(nowPlayingMovies: tMovieList),
      act: (cubit) => cubit.fetchPopularMovies(),
      expect: () => [
        const MovieListState.loading(category: 'popular'),
        MovieListState.loaded(
          nowPlayingMovies: tMovieList,
          popularMovies: tMovieList,
        ),
      ],
      verify: (_) {
        verify(mockGetPopularMovies.execute()).called(1);
      },
    );

    blocTest<MovieListCubit, MovieListState>(
      'should emit [Loading, Error] when failure',
      build: () {
        when(mockGetPopularMovies.execute())
            .thenAnswer((_) async => Left(ServerFailure('Database Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchPopularMovies(),
      expect: () => [
        const MovieListState.loading(category: 'popular'),
        const MovieListState.error('Database Failure'),
      ],
      verify: (_) {
        verify(mockGetPopularMovies.execute()).called(1);
      },
    );
  });

  group('fetchTopRatedMovies', () {
    blocTest<MovieListCubit, MovieListState>(
      'should emit [Loading, Loaded] when successful',
      build: () {
        when(mockGetTopRatedMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return cubit;
      },
      act: (cubit) => cubit.fetchTopRatedMovies(),
      expect: () => [
        const MovieListState.loading(category: 'top_rated'),
        MovieListState.loaded(topRatedMovies: tMovieList),
      ],
      verify: (_) {
        verify(mockGetTopRatedMovies.execute()).called(1);
      },
    );

    blocTest<MovieListCubit, MovieListState>(
      'should emit [Loading, Error] when unsuccessful',
      build: () {
        when(mockGetTopRatedMovies.execute())
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchTopRatedMovies(),
      expect: () => [
        const MovieListState.loading(category: 'top_rated'),
        const MovieListState.error('Server Failure'),
      ],
      verify: (_) {
        verify(mockGetTopRatedMovies.execute()).called(1);
      },
    );
  });

  group('fetchAll', () {
    blocTest<MovieListCubit, MovieListState>(
      'should call all usecases and eventually load all categories',
      build: () {
        when(mockGetNowPlayingMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        when(mockGetPopularMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        when(mockGetTopRatedMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return cubit;
      },
      act: (cubit) => cubit.fetchAll(),
      expect: () => contains(MovieListState.loaded(
        nowPlayingMovies: tMovieList,
        popularMovies: tMovieList,
        topRatedMovies: tMovieList,
      )),
      verify: (_) {
        verify(mockGetNowPlayingMovies.execute()).called(1);
        verify(mockGetPopularMovies.execute()).called(1);
        verify(mockGetTopRatedMovies.execute()).called(1);
      },
    );
  });
}