import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_tv_series.dart';
import 'package:ditonton/presentation/provider/tv_series/watchlist_tv_series_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'watchlist_tv_series_notifier_test.mocks.dart';

@GenerateMocks([GetWatchlistTvSeries])
void main() {
  late WatchlistTvSeriesNotifier provider;
  late MockGetWatchlistTvSeries mockGetWatchlistTvSeries;
  late int listenerCallCount;

  setUp(() {

    final tTvSeries = TvSeries(
      adult: false,
      backdropPath: 'backdropPath',
      genreIds: [1, 2, 3],
      id: 1,
      originalName: 'originalName',
      overview: 'overview',
      popularity: 1,
      posterPath: 'posterPath',
      firstAirDate: 'firstAirDate',
      name: 'name',
      // video: false,
      voteAverage: 1,
      voteCount: 1,
    );
    final tTvSeriesList = <TvSeries>[tTvSeries];


    provideDummy<Either<Failure, String>>(Right("Success"));
    // provideDummy<Either<Failure, TvSeriesDetail>>(Right(testTvSeriesDetail));
    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
    // provideDummy<Either<Failure, TvSeriesDetail>>(Left(ServerFailure('dummy error')));
    provideDummy<Either<Failure, List<TvSeries>>>(Left(ServerFailure('dummy error')));

    listenerCallCount = 0;
    mockGetWatchlistTvSeries = MockGetWatchlistTvSeries();
    provider = WatchlistTvSeriesNotifier(
      getWatchlistTvSeries: mockGetWatchlistTvSeries,
    )..addListener(() {
        listenerCallCount += 1;
      });
  });

  test('should change movie data when data is gotten successfully', () async {
    // arrange
    when(mockGetWatchlistTvSeries.execute())
        .thenAnswer((_) async => Right([testWatchlistTvSeries]));
    // act
    await provider.fetchWatchlistTvSeries();
    // assert
    expect(provider.watchlistState, RequestState.Loaded);
    expect(provider.watchlistTvSeries, [testWatchlistTvSeries]);
    expect(listenerCallCount, 2);
  });

  test('should return error when data is unsuccessful', () async {
    // arrange
    when(mockGetWatchlistTvSeries.execute())
        .thenAnswer((_) async => Left(DatabaseFailure("Can't get data")));
    // act
    await provider.fetchWatchlistTvSeries();
    // assert
    expect(provider.watchlistState, RequestState.Error);
    expect(provider.message, "Can't get data");
    expect(listenerCallCount, 2);
  });
}
