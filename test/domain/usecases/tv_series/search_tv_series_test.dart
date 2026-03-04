import 'package:ditonton/common/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/movie/search_movies.dart';
import 'package:ditonton/domain/usecases/tv_series/search_tv_series.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late SearchTvSeries usecase;
  late MockTvSeriesRepository mockTvSeriesRepository;

  setUp(() {
    mockTvSeriesRepository = MockTvSeriesRepository();
    usecase = SearchTvSeries(mockTvSeriesRepository);
    provideDummy<Either<Failure, List<TvSeries>>>(Right(testTvSeriesList));
  });

  final tQuery = 'Spiderman';

  test('should get list of movie from the repository', () async {
    // arrange
    when(mockTvSeriesRepository.searchTvSeries(tQuery))
        .thenAnswer((_) async => Right(testTvSeriesList));
    // act
    final result = await usecase.execute(tQuery);
    // assert
    expect(result, Right(testTvSeriesList));
  });
}
