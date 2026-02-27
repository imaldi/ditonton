import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_tv_series.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/tv_series/watchlist_tv_series_cubit.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'watchlist_tv_series_cubit_test.mocks.dart';

@GenerateMocks([GetWatchlistTvSeries])
void main() {
  late WatchlistTvSeriesCubit cubit;
  late MockGetWatchlistTvSeries mockGetWatchlistTvSeries;

  setUp(() {
    mockGetWatchlistTvSeries = MockGetWatchlistTvSeries();
    cubit = WatchlistTvSeriesCubit(getWatchlistTvSeries: mockGetWatchlistTvSeries);

    provideDummy<Either<Failure, List<TvSeries>>>(Right([testWatchlistTvSeries]));
    provideDummy<Either<Failure, List<TvSeries>>>(Left(DatabaseFailure("Can't get data")));
  });

  tearDown(() => cubit.close());

  group('fetchWatchlistTvSeries', () {
    blocTest<WatchlistTvSeriesCubit, WatchlistTvSeriesState>(
      'should emit Loading then Loaded with watchlist tv series when successful',
      build: () {
        when(mockGetWatchlistTvSeries.execute())
            .thenAnswer((_) async => Right([testWatchlistTvSeries]));
        return cubit;
      },
      act: (cubit) => cubit.fetchWatchlistTvSeries(),
      expect: () => [
        const WatchlistTvSeriesState(state: RequestState.Loading, message: ''),
        WatchlistTvSeriesState(
          state: RequestState.Loaded,
          watchlistTvSeries: [testWatchlistTvSeries],
          message: '',
        ),
      ],
      verify: (_) {
        verify(mockGetWatchlistTvSeries.execute()).called(1);
      },
    );

    blocTest<WatchlistTvSeriesCubit, WatchlistTvSeriesState>(
      'should emit Loading then Error when data is unsuccessful',
      build: () {
        when(mockGetWatchlistTvSeries.execute())
            .thenAnswer((_) async => Left(DatabaseFailure("Can't get data")));
        return cubit;
      },
      act: (cubit) => cubit.fetchWatchlistTvSeries(),
      expect: () => [
        const WatchlistTvSeriesState(state: RequestState.Loading, message: ''),
        const WatchlistTvSeriesState(
          state: RequestState.Error,
          message: "Can't get data",
        ),
      ],
      verify: (_) {
        verify(mockGetWatchlistTvSeries.execute()).called(1);
      },
    );
  });
}