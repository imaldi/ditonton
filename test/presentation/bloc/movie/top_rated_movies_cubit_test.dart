import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_top_rated_movies.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/movie/top_rated_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/top_rated_movies_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'top_rated_movies_cubit_test.mocks.dart';

@GenerateMocks([GetTopRatedMovies])
void main() {
  late TopRatedMoviesCubit cubit;
  late MockGetTopRatedMovies mockGetTopRatedMovies;

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
    mockGetTopRatedMovies = MockGetTopRatedMovies();
    cubit = TopRatedMoviesCubit(getTopRatedMovies: mockGetTopRatedMovies);

    provideDummy<Either<Failure, List<Movie>>>(Right(tMovieList));
    provideDummy<Either<Failure, List<Movie>>>(Left(ServerFailure('dummy error')));
  });

  tearDown(() => cubit.close());

  group('fetchTopRatedMovies', () {
    blocTest<TopRatedMoviesCubit, TopRatedMoviesState>(
      'should emit Loading then Loaded with movies when data is successful',
      build: () {
        when(mockGetTopRatedMovies.execute())
            .thenAnswer((_) async => Right(tMovieList));
        return cubit;
      },
      act: (cubit) => cubit.fetchTopRatedMovies(),
      expect: () => [
        const TopRatedMoviesState(state: RequestState.Loading, message: ''),
        TopRatedMoviesState(
          state: RequestState.Loaded,
          movies: tMovieList,
          message: '',
        ),
      ],
      verify: (_) {
        verify(mockGetTopRatedMovies.execute()).called(1);
      },
    );

    blocTest<TopRatedMoviesCubit, TopRatedMoviesState>(
      'should emit Loading then Error when data is unsuccessful',
      build: () {
        when(mockGetTopRatedMovies.execute())
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchTopRatedMovies(),
      expect: () => [
        const TopRatedMoviesState(state: RequestState.Loading, message: ''),
        const TopRatedMoviesState(
          state: RequestState.Error,
          message: 'Server Failure',
        ),
      ],
      verify: (_) {
        verify(mockGetTopRatedMovies.execute()).called(1);
      },
    );
  });
}