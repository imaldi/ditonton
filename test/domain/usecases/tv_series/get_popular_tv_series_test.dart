import 'package:ditonton/common/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/movie/get_popular_movies.dart';
import 'package:ditonton/domain/usecases/tv_series/get_popular_tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late GetPopularTvSeries usecase;
  late MockTvSeriesRepository mockTvSeriesRpository;

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
    mockTvSeriesRpository = MockTvSeriesRepository();
    usecase = GetPopularTvSeries(mockTvSeriesRpository);
    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
  });

  group('GetPopularTvSeries Tests', () {
    group('execute', () {
      test(
          'should get list of movie from the repository when execute function is called',
          () async {
        // arrange
        when(mockTvSeriesRpository.getPopularTvSeries())
            .thenAnswer((_) async => Right(tTvSeriesList));
        // act
        final result = await usecase.execute();
        // assert
        expect(result, Right(tTvSeriesList));
      });
    });
  });
}
