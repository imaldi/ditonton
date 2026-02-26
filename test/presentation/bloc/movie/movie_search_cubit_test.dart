import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/search_movies.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/movie/movie_search_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/movie_search_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_search_cubit_test.mocks.dart';

@GenerateMocks([SearchMovies])
void main() {
  late MovieSearchCubit cubit;
  late MockSearchMovies mockSearchMovies;

  final tMovieModel = Movie(
    adult: false,
    backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
    genreIds: const [14, 28],
    id: 557,
    originalTitle: 'Spider-Man',
    overview:
    'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
    popularity: 60.441,
    posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
    releaseDate: '2002-05-01',
    title: 'Spider-Man',
    video: false,
    voteAverage: 7.2,
    voteCount: 13507,
  );

  final tMovieList = <Movie>[tMovieModel];
  final tQuery = 'spiderman';

  setUp(() {
    mockSearchMovies = MockSearchMovies();
    cubit = MovieSearchCubit(searchMovies: mockSearchMovies);

    provideDummy<Either<Failure, List<Movie>>>(Right(tMovieList));
    provideDummy<Either<Failure, List<Movie>>>(Left(ServerFailure('dummy error')));
  });

  tearDown(() => cubit.close());

  group('fetchMovieSearch', () {
    blocTest<MovieSearchCubit, MovieSearchState>(
      'should emit Loading then Loaded when data is successful',
      build: () {
        when(mockSearchMovies.execute(tQuery))
            .thenAnswer((_) async => Right(tMovieList));
        return cubit;
      },
      act: (cubit) => cubit.fetchMovieSearch(tQuery),
      expect: () => [
        MovieSearchState(state: RequestState.Loading, message: ''),
        MovieSearchState(
          state: RequestState.Loaded,
          searchResult: tMovieList,
          message: '',
        ),
      ],
      verify: (_) {
        verify(mockSearchMovies.execute(tQuery)).called(1);
      },
    );

    blocTest<MovieSearchCubit, MovieSearchState>(
      'should emit Loading then Error when usecase fails',
      build: () {
        when(mockSearchMovies.execute(tQuery))
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchMovieSearch(tQuery),
      expect: () => [
        MovieSearchState(state: RequestState.Loading, message: ''),
        MovieSearchState(
          state: RequestState.Error,
          message: 'Server Failure',
        ),
      ],
      verify: (_) {
        verify(mockSearchMovies.execute(tQuery)).called(1);
      },
    );

    blocTest<MovieSearchCubit, MovieSearchState>(
      'should emit Empty when query is empty',
      build: () => cubit,
      act: (cubit) => cubit.fetchMovieSearch('   '),
      expect: () => [
        MovieSearchState(
          state: RequestState.Empty,
          searchResult: [],
          message: '',
        ),
      ],
      verify: (_) {
        verifyNever(mockSearchMovies.execute(any)); // memastikan tidak dipanggil
      },
    );
  });

  group('clearSearch', () {
    blocTest<MovieSearchCubit, MovieSearchState>(
      'should reset to Empty state',
      build: () => cubit,
      seed: () => MovieSearchState(
        state: RequestState.Loaded,
        searchResult: tMovieList,
      ),
      act: (cubit) => cubit.clearSearch(),
      expect: () => [
        MovieSearchState(
          state: RequestState.Empty,
          searchResult: [],
          message: '',
        ),
      ],
    );
  });
}