import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_popular_movies.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/movie/popular_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/popular_movies_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'popular_movies_cubit_test.mocks.dart';

@GenerateMocks([GetPopularMovies])
void main() {
  late PopularMoviesCubit cubit;
  late MockGetPopularMovies mockGetPopularMovies;

  final tMovie = Movie(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: const [1, 2, 3],
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

  final tMovieList = <Movie>[tMovie];

  setUp(() {
    mockGetPopularMovies = MockGetPopularMovies();
    cubit = PopularMoviesCubit(getPopularMovies: mockGetPopularMovies);

    provideDummy<Either<Failure, List<Movie>>>(Right(tMovieList));
    provideDummy<Either<Failure, List<Movie>>>(Left(ServerFailure('dummy error')));
  });

  tearDown(() => cubit.close());

  group('fetchPopularMovies', () {
    blocTest<PopularMoviesCubit, PopularMoviesState>(
      'should emit Loading when usecase is called',
      build: () {
        when(mockGetPopularMovies.execute())
            .thenAnswer((_) async {
              // await Future.delayed(Duration.zero);
              return Right(tMovieList);
            });
        return cubit;
      },
      act: (cubit) => cubit.fetchPopularMovies(),
      expect: () => [
        const PopularMoviesState(state: RequestState.Loading, message: ''),
        PopularMoviesState(state: RequestState.Loaded, movies: tMovieList),
      ],
      verify: (_) {
        verify(mockGetPopularMovies.execute()).called(1);
      },
    );

    blocTest<PopularMoviesCubit, PopularMoviesState>(
      'should emit Loaded with movies when data is successful',
      build: () {
        when(mockGetPopularMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return cubit;
      },
      act: (cubit) => cubit.fetchPopularMovies(),
      expect: () => [
        const PopularMoviesState(state: RequestState.Loading, message: ''),
        PopularMoviesState(
          state: RequestState.Loaded,
          movies: tMovieList,
          message: '',
        ),
      ],
      verify: (_) {
        verify(mockGetPopularMovies.execute()).called(1);
      },
    );

    blocTest<PopularMoviesCubit, PopularMoviesState>(
      'should emit Error when data is unsuccessful',
      build: () {
        when(mockGetPopularMovies.execute())
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchPopularMovies(),
      expect: () => [
        const PopularMoviesState(state: RequestState.Loading, message: ''),
        const PopularMoviesState(
          state: RequestState.Error,
          message: 'Server Failure',
        ),
      ],
      verify: (_) {
        verify(mockGetPopularMovies.execute()).called(1);
      },
    );
  });
}