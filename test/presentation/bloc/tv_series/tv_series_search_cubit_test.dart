import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/search_tv_series.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_search_cubit.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'tv_series_search_cubit_test.mocks.dart';

@GenerateMocks([SearchTvSeries])
void main() {
  late TvSeriesSearchCubit cubit;
  late MockSearchTvSeries mockSearchTvSeries;

  final tTvSeriesModel = TvSeries(
    adult: false,
    backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
    genreIds: const [14, 28],
    id: 557,
    originalName: 'Spider-Man',
    overview:
    'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
    popularity: 60.441,
    posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
    firstAirDate: '2002-05-01',
    name: 'Spider-Man',
    voteAverage: 7.2,
    voteCount: 13507,
  );

  final tTvSeriesList = <TvSeries>[tTvSeriesModel];
  final tQuery = 'spiderman';

  setUp(() {
    mockSearchTvSeries = MockSearchTvSeries();
    cubit = TvSeriesSearchCubit(searchTvSeries: mockSearchTvSeries);

    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
    provideDummy<Either<Failure, List<TvSeries>>>(Left(ServerFailure('Server Failure')));
  });

  tearDown(() => cubit.close());

  group('fetchTvSeriesSearch', () {
    blocTest<TvSeriesSearchCubit, TvSeriesSearchState>(
      'should emit Loading then Loaded when data is successful',
      build: () {
        when(mockSearchTvSeries.execute(tQuery))
            .thenAnswer((_) async => Right(tTvSeriesList));
        return cubit;
      },
      act: (cubit) => cubit.fetchTvSeriesSearch(tQuery),
      expect: () => [
        const TvSeriesSearchState(state: RequestState.Loading, message: ''),
        TvSeriesSearchState(
          state: RequestState.Loaded,
          searchResult: tTvSeriesList,
          message: '',
        ),
      ],
      verify: (_) {
        verify(mockSearchTvSeries.execute(tQuery)).called(1);
      },
    );

    blocTest<TvSeriesSearchCubit, TvSeriesSearchState>(
      'should emit Loading then Error when usecase fails',
      build: () {
        when(mockSearchTvSeries.execute(tQuery))
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchTvSeriesSearch(tQuery),
      expect: () => [
        const TvSeriesSearchState(state: RequestState.Loading, message: ''),
        const TvSeriesSearchState(
          state: RequestState.Error,
          message: 'Server Failure',
        ),
      ],
      verify: (_) {
        verify(mockSearchTvSeries.execute(tQuery)).called(1);
      },
    );

    blocTest<TvSeriesSearchCubit, TvSeriesSearchState>(
      'should emit Empty when query is empty',
      build: () => cubit,
      act: (cubit) => cubit.fetchTvSeriesSearch('   '),
      expect: () => [
        const TvSeriesSearchState(
          state: RequestState.Empty,
          searchResult: [],
          message: '',
        ),
      ],
      verify: (_) {
        verifyNever(mockSearchTvSeries.execute(any));
      },
    );
  });

  group('clearSearch', () {
    blocTest<TvSeriesSearchCubit, TvSeriesSearchState>(
      'should reset to Empty state',
      build: () => cubit,
      seed: () => TvSeriesSearchState(
        state: RequestState.Loaded,
        searchResult: tTvSeriesList,
      ),
      act: (cubit) => cubit.clearSearch(),
      expect: () => [
        const TvSeriesSearchState(
          state: RequestState.Empty,
          searchResult: [],
          message: '',
        ),
      ],
    );
  });
}