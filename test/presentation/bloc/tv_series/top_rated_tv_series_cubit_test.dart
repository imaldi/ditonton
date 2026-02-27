import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_top_rated_tv_series.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/tv_series/top_rated_tv_series_cubit.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'top_rated_tv_series_cubit_test.mocks.dart';

@GenerateMocks([GetTopRatedTvSeries])
void main() {
  late TopRatedTvSeriesCubit cubit;
  late MockGetTopRatedTvSeries mockGetTopRatedTvSeries;

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
    mockGetTopRatedTvSeries = MockGetTopRatedTvSeries();
    cubit = TopRatedTvSeriesCubit(getTopRatedTvSeries: mockGetTopRatedTvSeries);

    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
    provideDummy<Either<Failure, List<TvSeries>>>(Left(ServerFailure('Server Failure')));
  });

  tearDown(() => cubit.close());

  group('fetchTopRatedTvSeries', () {
    blocTest<TopRatedTvSeriesCubit, TopRatedTvSeriesState>(
      'should emit Loading then Loaded with tv series when data is successful',
      build: () {
        when(mockGetTopRatedTvSeries.execute())
            .thenAnswer((_) async => Right(tTvSeriesList));
        return cubit;
      },
      act: (cubit) => cubit.fetchTopRatedTvSeries(),
      expect: () => [
        const TopRatedTvSeriesState(state: RequestState.Loading, message: ''),
        TopRatedTvSeriesState(
          state: RequestState.Loaded,
          tvSeries: tTvSeriesList,
          message: '',
        ),
      ],
      verify: (_) {
        verify(mockGetTopRatedTvSeries.execute()).called(1);
      },
    );

    blocTest<TopRatedTvSeriesCubit, TopRatedTvSeriesState>(
      'should emit Loading then Error when data is unsuccessful',
      build: () {
        when(mockGetTopRatedTvSeries.execute())
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchTopRatedTvSeries(),
      expect: () => [
        const TopRatedTvSeriesState(state: RequestState.Loading, message: ''),
        const TopRatedTvSeriesState(
          state: RequestState.Error,
          message: 'Server Failure',
        ),
      ],
      verify: (_) {
        verify(mockGetTopRatedTvSeries.execute()).called(1);
      },
    );
  });
}