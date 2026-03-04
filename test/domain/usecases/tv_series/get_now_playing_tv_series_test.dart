import 'package:ditonton/common/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_now_playing_tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late GetNowPlayingTvSeries usecase;
  late MockTvSeriesRepository mockTvSeriesRepository;


  final tTvSeries = TvSeries(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: const [1, 2, 3],
    id: 1,
    originalName: 'originalName',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    firstAirDate: 'firstAirDate',
    name: 'name',
    voteAverage: 1,
    voteCount: 1,
  );

  final tTvSeriesList = <TvSeries>[tTvSeries];

  setUp(() {
    mockTvSeriesRepository = MockTvSeriesRepository();
    usecase = GetNowPlayingTvSeries(mockTvSeriesRepository);

    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
    provideDummy<Either<Failure, List<TvSeries>>>(Left(ServerFailure('Server Failure')));
  });

  // final tTvSeries = <TvSeries>[];

  test('should get list of tv series from the repository', () async {
    // arrange
    when(mockTvSeriesRepository.getAiringTodayTvSeries())
        .thenAnswer((_) async => Right(tTvSeriesList));
    // act
    final result = await usecase.execute();
    // assert
    expect(result, Either<Failure, List<TvSeries>>.right(tTvSeriesList));
  });
}
