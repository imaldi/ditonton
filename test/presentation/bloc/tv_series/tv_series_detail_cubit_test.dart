import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_detail.dart';
import 'package:ditonton/domain/usecases/tv_series/get_tv_series_recommendations.dart';
import 'package:ditonton/domain/usecases/tv_series/get_watchlist_tv_series_status.dart';
import 'package:ditonton/domain/usecases/tv_series/remove_watchlist_tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/save_watchlist_tv_series.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_detail_cubit.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'tv_series_detail_cubit_test.mocks.dart';

@GenerateMocks([
  GetTvSeriesDetail,
  GetTvSeriesRecommendations,
  GetWatchlistTvSeriesStatus,
  SaveWatchlistTvSeries,
  RemoveWatchlistTvSeries,
])
void main() {
  late TvSeriesDetailCubit cubit;
  late MockGetTvSeriesDetail mockGetTvSeriesDetail;
  late MockGetTvSeriesRecommendations mockGetTvSeriesRecommendations;
  late MockGetWatchlistTvSeriesStatus mockGetWatchlistStatus;
  late MockSaveWatchlistTvSeries mockSaveWatchlist;
  late MockRemoveWatchlistTvSeries mockRemoveWatchlist;

  final tId = 1;

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

  setUp(() {
    mockGetTvSeriesDetail = MockGetTvSeriesDetail();
    mockGetTvSeriesRecommendations = MockGetTvSeriesRecommendations();
    mockGetWatchlistStatus = MockGetWatchlistTvSeriesStatus();
    mockSaveWatchlist = MockSaveWatchlistTvSeries();
    mockRemoveWatchlist = MockRemoveWatchlistTvSeries();

    cubit = TvSeriesDetailCubit(
      getTvSeriesDetail: mockGetTvSeriesDetail,
      getTvSeriesRecommendations: mockGetTvSeriesRecommendations,
      getWatchListStatus: mockGetWatchlistStatus,
      saveWatchlist: mockSaveWatchlist,
      removeWatchlist: mockRemoveWatchlist,
    );



    provideDummy<Either<Failure, TvSeriesDetail>>(Right(testTvSeriesDetail));
    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
    provideDummy<Either<Failure, String>>(const Right('Success'));
    provideDummy<Either<Failure, bool>>(const Right(true));
  });

  tearDown(() => cubit.close());

  group('fetchTvSeriesDetail', () {
    blocTest<TvSeriesDetailCubit, TvSeriesDetailState>(
      'should emit Loading then Loaded with tv series and recommendations when successful',
      build: () {
        when(mockGetTvSeriesDetail.execute(tId))
            .thenAnswer((_) async => Right(testTvSeriesDetail));
        when(mockGetTvSeriesRecommendations.execute(tId))
            .thenAnswer((_) async => Right(tTvSeriesList));
        return cubit;
      },
      act: (cubit) => cubit.fetchTvSeriesDetail(tId),
      expect: () => [
        TvSeriesDetailState(
            tvSeriesState: RequestState.Loading,
          message: ''
        ),
        TvSeriesDetailState(
          tvSeriesState: RequestState.Loaded,
          tvSeries: testTvSeriesDetail,
          recommendationState: RequestState.Empty,
        ),
        TvSeriesDetailState(
          tvSeriesState: RequestState.Loaded,
          tvSeries: testTvSeriesDetail,
          recommendationState: RequestState.Loaded,
          recommendations: tTvSeriesList,
        ),
        // predicate<TvSeriesDetailState>((s) =>
        // s.tvSeriesState == RequestState.Loading && s.message == ''),
        // predicate<TvSeriesDetailState>((s) =>
        // s.tvSeriesState == RequestState.Loaded &&
        //     s.tvSeries == testTvSeriesDetail &&
        //     s.recommendationState == RequestState.Loaded &&
        //     s.recommendations == tTvSeriesList),
      ],
      verify: (_) {
        verify(mockGetTvSeriesDetail.execute(tId)).called(1);
        verify(mockGetTvSeriesRecommendations.execute(tId)).called(1);
      },
    );

    blocTest<TvSeriesDetailCubit, TvSeriesDetailState>(
      'should emit Error when detail fetch fails',
      build: () {
        when(mockGetTvSeriesDetail.execute(tId))
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        when(mockGetTvSeriesRecommendations.execute(tId))
            .thenAnswer((_) async => Right(tTvSeriesList));
        return cubit;
      },
      seed: () => TvSeriesDetailState(recommendations: tTvSeriesList), // preserve test
      act: (cubit) => cubit.fetchTvSeriesDetail(tId),
      expect: () => [
        TvSeriesDetailState(
          tvSeriesState: RequestState.Loading,
          recommendations: tTvSeriesList,
        ),
        TvSeriesDetailState(
          tvSeriesState: RequestState.Error,
          message: 'Server Failure',
          recommendations: tTvSeriesList,
        )
        // predicate<TvSeriesDetailState>((s) => s.tvSeriesState == RequestState.Loading),
        // predicate<TvSeriesDetailState>((s) =>
        // s.tvSeriesState == RequestState.Error &&
        //     s.message == 'Server Failure' &&
        //     s.recommendations == tTvSeriesList),
      ],
    );

    blocTest<TvSeriesDetailCubit, TvSeriesDetailState>(
      'should set recommendation error when recommendations fail',
      build: () {
        when(mockGetTvSeriesDetail.execute(tId))
            .thenAnswer((_) async => Right(testTvSeriesDetail));
        when(mockGetTvSeriesRecommendations.execute(tId))
            .thenAnswer((_) async => Left(ServerFailure('Failed')));
        return cubit;
      },
      act: (cubit) => cubit.fetchTvSeriesDetail(tId),
      expect: () => containsAll([
        predicate<TvSeriesDetailState>((s) =>
        s.tvSeriesState == RequestState.Loaded &&
            s.tvSeries == testTvSeriesDetail),
        predicate<TvSeriesDetailState>((s) =>
        s.recommendationState == RequestState.Error &&
            s.message == 'Failed'),
      ]),
    );
  });

  group('watchlist', () {
    blocTest<TvSeriesDetailCubit, TvSeriesDetailState>(
      'should load watchlist status',
      build: () {
        when(mockGetWatchlistStatus.execute(tId)).thenAnswer((_) async => true);
        return cubit;
      },
      act: (cubit) => cubit.loadWatchlistStatus(tId),
      expect: () => [
        predicate<TvSeriesDetailState>((s) => s.isAddedToWatchlist == true),
      ],
    );

    blocTest<TvSeriesDetailCubit, TvSeriesDetailState>(
      'should add to watchlist and update status/message',
      build: () {
        when(mockSaveWatchlist.execute(testTvSeriesDetail))
            .thenAnswer((_) async => const Right('Added to Watchlist'));
        when(mockGetWatchlistStatus.execute(tId)).thenAnswer((_) async => true);
        return cubit;
      },
      act: (cubit) => cubit.addWatchlist(testTvSeriesDetail),
      seed: () => TvSeriesDetailState(
          watchlistMessage: ''
      ),
      expect: () => [
        TvSeriesDetailState(
          watchlistMessage: 'Added to Watchlist',
          isAddedToWatchlist: true,
        ),
        // predicate<TvSeriesDetailState>((s) =>
        // s.watchlistMessage == 'Added to Watchlist' &&
        //     s.isAddedToWatchlist == true),
      ],
      verify: (_) {
        verify(mockSaveWatchlist.execute(testTvSeriesDetail)).called(1);
        verify(mockGetWatchlistStatus.execute(tId)).called(1);
      },
    );

    // Serupa untuk removeFromWatchlist
    blocTest<TvSeriesDetailCubit, TvSeriesDetailState>(
      'should remove from watchlist and update status/message',
      build: () {
        when(mockRemoveWatchlist.execute(testTvSeriesDetail))
            .thenAnswer((_) async => const Right('Removed from Watchlist'));
        when(mockGetWatchlistStatus.execute(tId)).thenAnswer((_) async => false);
        return cubit;
      },
      act: (cubit) => cubit.removeFromWatchlist(testTvSeriesDetail),
      expect: () => [
        predicate<TvSeriesDetailState>((s) =>
        s.watchlistMessage == 'Removed from Watchlist' &&
            s.isAddedToWatchlist == false),
      ],
      verify: (_) {
        verify(mockRemoveWatchlist.execute(testTvSeriesDetail)).called(1);
        verify(mockGetWatchlistStatus.execute(tId)).called(1);
      },
    );
  });
}