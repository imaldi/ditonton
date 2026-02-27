import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_popular_tv_series.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/tv_series/popular_tv_series_cubit.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'popular_tv_series_cubit_test.mocks.dart';

@GenerateMocks([GetPopularTvSeries])
void main() {
  late PopularTvSeriesCubit cubit;
  late MockGetPopularTvSeries mockGetPopularTvSeries;

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
    mockGetPopularTvSeries = MockGetPopularTvSeries();
    cubit = PopularTvSeriesCubit(getPopularTvSeries: mockGetPopularTvSeries);

    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
    provideDummy<Either<Failure, List<TvSeries>>>(Left(ServerFailure('Server Failure')));
  });

  tearDown(() => cubit.close());

  group('fetchPopularTvSeries', () {
    blocTest<PopularTvSeriesCubit, PopularTvSeriesState>(
      'should emit Loading then Loaded with tv series when data is successful',
      build: () {
        when(mockGetPopularTvSeries.execute())
            .thenAnswer((_) async => Right(tTvSeriesList));
        return cubit;
      },
      act: (cubit) => cubit.fetchPopularTvSeries(),
      expect: () => [
        const PopularTvSeriesState(state: RequestState.Loading, message: ''),
        PopularTvSeriesState(
          state: RequestState.Loaded,
          tvSeries: tTvSeriesList,
          message: '',
        ),
      ],
      verify: (_) {
        verify(mockGetPopularTvSeries.execute()).called(1);
      },
    );

    blocTest<PopularTvSeriesCubit, PopularTvSeriesState>(
      'should emit Loading then Error when data is unsuccessful',
      build: () {
        when(mockGetPopularTvSeries.execute())
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchPopularTvSeries(),
      expect: () => [
        const PopularTvSeriesState(state: RequestState.Loading, message: ''),
        const PopularTvSeriesState(
          state: RequestState.Error,
          message: 'Server Failure',
        ),
      ],
      verify: (_) {
        verify(mockGetPopularTvSeries.execute()).called(1);
      },
    );
  });
}