import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_watchlist_movies.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/movie/watchlist_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/watchlist_movies_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'watchlist_movies_cubit_test.mocks.dart';

@GenerateMocks([GetWatchlistMovies])
void main() {
  late WatchlistMoviesCubit cubit;
  late MockGetWatchlistMovies mockGetWatchlistMovies;

  setUp(() {
    mockGetWatchlistMovies = MockGetWatchlistMovies();
    cubit = WatchlistMoviesCubit(getWatchlistMovies: mockGetWatchlistMovies);

    provideDummy<Either<Failure, List<Movie>>>(Right([testWatchlistMovie]));
    provideDummy<Either<Failure, List<Movie>>>(Left(DatabaseFailure("Can't get data")));
  });

  tearDown(() => cubit.close());

  group('fetchWatchlistMovies', () {
    blocTest<WatchlistMoviesCubit, WatchlistMoviesState>(
      'should emit Loading then Loaded with watchlist movies when successful',
      build: () {
        when(mockGetWatchlistMovies.execute())
            .thenAnswer((_) async => Right([testWatchlistMovie]));
        return cubit;
      },
      act: (cubit) => cubit.fetchWatchlistMovies(),
      expect: () => [
        const WatchlistMoviesState(state: RequestState.Loading, message: ''),
        WatchlistMoviesState(
          state: RequestState.Loaded,
          watchlistMovies: [testWatchlistMovie],
          message: '',
        ),
      ],
      verify: (_) {
        verify(mockGetWatchlistMovies.execute()).called(1);
      },
    );

    blocTest<WatchlistMoviesCubit, WatchlistMoviesState>(
      'should emit Loading then Error when data is unsuccessful',
      build: () {
        when(mockGetWatchlistMovies.execute())
            .thenAnswer((_) async => Left(DatabaseFailure("Can't get data")));
        return cubit;
      },
      act: (cubit) => cubit.fetchWatchlistMovies(),
      expect: () => [
        const WatchlistMoviesState(state: RequestState.Loading, message: ''),
        const WatchlistMoviesState(
          state: RequestState.Error,
          message: "Can't get data",
        ),
      ],
      verify: (_) {
        verify(mockGetWatchlistMovies.execute()).called(1);
      },
    );
  });
}