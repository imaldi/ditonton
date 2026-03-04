import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_detail_cubit.dart';
import 'package:ditonton/presentation/pages/tv_series/tv_series_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'tv_series_detail_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TvSeriesDetailCubit>()])
void main() {
  late MockTvSeriesDetailCubit mockTvSeriesDetailCubit;


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
    mockTvSeriesDetailCubit = MockTvSeriesDetailCubit();
    provideDummy<Either<Failure, TvSeriesDetail>>(Right(testTvSeriesDetail));
    provideDummy<Either<Failure, List<TvSeries>>>(Right(tTvSeriesList));
    provideDummy<Either<Failure, String>>(const Right('Added To Wa'));
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<TvSeriesDetailCubit>.value(
      value: mockTvSeriesDetailCubit,
      child: MaterialApp(home: body),
    );
  }

  testWidgets('watchlist button shows add icon when not added', (WidgetTester tester) async {
    when(mockTvSeriesDetailCubit.state).thenReturn(
      TvSeriesDetailState(
        tvSeriesState: RequestState.Loaded,
        tvSeries: testTvSeriesDetail,
        recommendationState: RequestState.Loaded,
        recommendations: [],
        isAddedToWatchlist: false,
      ),
    );

    await tester.pumpWidget(makeTestableWidget(TvSeriesDetailPage(id: 1)));

    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.check), findsNothing);
  });

  testWidgets('watchlist button shows check icon when added', (WidgetTester tester) async {
    when(mockTvSeriesDetailCubit.state).thenReturn(
      TvSeriesDetailState(
        tvSeriesState: RequestState.Loaded,
        tvSeries: testTvSeriesDetail,
        recommendationState: RequestState.Loaded,
        recommendations: [],
        isAddedToWatchlist: true,
      ),
    );

    await tester.pumpWidget(makeTestableWidget(TvSeriesDetailPage(id: 1)));

    expect(find.byIcon(Icons.check), findsOneWidget);
    expect(find.byIcon(Icons.add), findsNothing);
  });

  testWidgets('displays tvSeries detail when loaded', (WidgetTester tester) async {
    when(mockTvSeriesDetailCubit.state).thenReturn(
      TvSeriesDetailState(
        tvSeriesState: RequestState.Loaded,
        tvSeries: testTvSeriesDetail,
        recommendationState: RequestState.Loaded,
        recommendations: [],
      ),
    );

    await tester.pumpWidget(makeTestableWidget(TvSeriesDetailPage(id: 1)));

    expect(find.text(testTvSeriesDetail.name), findsOneWidget);
    expect(find.text(testTvSeriesDetail.overview), findsOneWidget);
  });

  testWidgets('displays loading indicator when loading', (WidgetTester tester) async {
    when(mockTvSeriesDetailCubit.state).thenReturn(const TvSeriesDetailState(tvSeriesState: RequestState.Loading));

    await tester.pumpWidget(makeTestableWidget(TvSeriesDetailPage(id: 1)));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('displays error message when error', (WidgetTester tester) async {
    when(
      mockTvSeriesDetailCubit.state,
    ).thenReturn(const TvSeriesDetailState(tvSeriesState: RequestState.Error, message: 'Server Failure'));

    await tester.pumpWidget(makeTestableWidget(TvSeriesDetailPage(id: 1)));

    expect(find.text('Server Failure'), findsOneWidget);
  });
}
