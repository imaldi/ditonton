import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_now_playing_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_popular_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_top_rated_tv_series.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_list_cubit.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'tv_series_list_cubit_test.mocks.dart';

@GenerateMocks([GetNowPlayingTvSeries, GetPopularTvSeries, GetTopRatedTvSeries])
void main() {
  late TvSeriesListCubit cubit;
  late MockGetNowPlayingTvSeries mockGetNowPlayingTvSeries;
  late MockGetPopularTvSeries mockGetPopularTvSeries;
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
    provideDummy<Either<Failure, String>>(const Right('Success'));
    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
    provideDummy<Either<Failure, List<TvSeries>>>(Left(ServerFailure('dummy error')));

    mockGetNowPlayingTvSeries = MockGetNowPlayingTvSeries();
    mockGetPopularTvSeries = MockGetPopularTvSeries();
    mockGetTopRatedTvSeries = MockGetTopRatedTvSeries();

    cubit = TvSeriesListCubit(
      getNowPlayingTvSeries: mockGetNowPlayingTvSeries,
      getPopularTvSeries: mockGetPopularTvSeries,
      getTopRatedTvSeries: mockGetTopRatedTvSeries,
    );
  });

  tearDown(() => cubit.close());

  group('initial state', () {
    test('should be initial', () {
      expect(cubit.state, const TvSeriesListState.initial());
    });
  });

  group('fetchNowPlayingTvSeries', () {
    blocTest<TvSeriesListCubit, TvSeriesListState>(
      'should emit Loading then Loaded when successful',
      build: () {
        when(mockGetNowPlayingTvSeries.execute()).thenAnswer((_) async => Right(tTvSeriesList));
        return cubit;
      },
      act: (cubit) => cubit.fetchNowPlayingTvSeries(),
      expect: () => [
        const TvSeriesListState.loading(category: 'now_playing'),
        TvSeriesListState.loaded(nowPlayingTvSeries: tTvSeriesList),
      ],
      verify: (_) {
        verify(mockGetNowPlayingTvSeries.execute()).called(1);
      },
    );

    blocTest<TvSeriesListCubit, TvSeriesListState>(
      'should emit Loading then Error when failure',
      build: () {
        when(mockGetNowPlayingTvSeries.execute()).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchNowPlayingTvSeries(),
      expect: () => [
        const TvSeriesListState.loading(category: 'now_playing'),
        const TvSeriesListState.error('Server Failure'),
      ],
      verify: (_) {
        verify(mockGetNowPlayingTvSeries.execute()).called(1);
      },
    );
  });

  group('fetchPopularTvSeries', () {
     blocTest<TvSeriesListCubit, TvSeriesListState>(
      'should emit Loading then Loaded when successful',
      build: () {
        when(mockGetPopularTvSeries.execute()).thenAnswer((_) async => Right(tTvSeriesList));
        return cubit;
      },
      act: (cubit) => cubit.fetchPopularTvSeries(),
      expect: () => [
        const TvSeriesListState.loading(category: 'popular'),
        TvSeriesListState.loaded(popularTvSeries: tTvSeriesList),
      ],
      verify: (_) {
        verify(mockGetPopularTvSeries.execute()).called(1);
      },
    );

    blocTest<TvSeriesListCubit, TvSeriesListState>(
      'should emit Loading then Error when failure',
      build: () {
        when(mockGetPopularTvSeries.execute()).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchPopularTvSeries(),
      expect: () => [
        const TvSeriesListState.loading(category: 'popular'),
        const TvSeriesListState.error('Server Failure'),
      ],
      verify: (_) {
        verify(mockGetPopularTvSeries.execute()).called(1);
      },
    );
  });

  group('fetchTopRatedTvSeries', () {
    blocTest<TvSeriesListCubit, TvSeriesListState>(
      'should emit Loading then Loaded when successful',
      build: () {
        when(mockGetTopRatedTvSeries.execute()).thenAnswer((_) async => Right(tTvSeriesList));
        return cubit;
      },
      act: (cubit) => cubit.fetchTopRatedTvSeries(),
      expect: () => [
        const TvSeriesListState.loading(category: 'top_rated'),
        TvSeriesListState.loaded(topRatedTvSeries: tTvSeriesList),
      ],
      verify: (_) {
        verify(mockGetTopRatedTvSeries.execute()).called(1);
      },
    );

    blocTest<TvSeriesListCubit, TvSeriesListState>(
      'should emit Loading then Error when failure',
      build: () {
        when(mockGetTopRatedTvSeries.execute()).thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return cubit;
      },
      act: (cubit) => cubit.fetchTopRatedTvSeries(),
      expect: () => [
        const TvSeriesListState.loading(category: 'top_rated'),
        const TvSeriesListState.error('Server Failure'),
      ],
      verify: (_) {
        verify(mockGetTopRatedTvSeries.execute()).called(1);
      },
    );
  });
}
