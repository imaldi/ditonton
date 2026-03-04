import 'package:cached_network_image/cached_network_image.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_list_cubit.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_search_cubit.dart';
import 'package:ditonton/presentation/pages/movies/search_page.dart';
import 'package:ditonton/presentation/pages/tv_series/home_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series/search_page_tv_series.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'tv_series_page_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<TvSeriesListCubit>(),
  MockSpec<TvSeriesSearchCubit>(),
])
void main() {
  late MockTvSeriesListCubit mockTvSeriesListCubit;
  late MockTvSeriesSearchCubit mockTvSeriesSearchCubit;

  setUp((){
    mockTvSeriesListCubit = MockTvSeriesListCubit();
    mockTvSeriesSearchCubit = MockTvSeriesSearchCubit();

    when(mockTvSeriesSearchCubit.state).thenReturn(const TvSeriesSearchState());
  });

  Widget makeTestableWidget(Widget body) {
    return MultiBlocProvider(providers: [
      BlocProvider<TvSeriesListCubit>.value(value: mockTvSeriesListCubit),
      BlocProvider<TvSeriesSearchCubit>.value(value: mockTvSeriesSearchCubit),
    ], child: MaterialApp(
      home: body,
      onGenerateRoute: (settings) {
        if (settings.name == SearchPageTvSeries.ROUTE_NAME) {
          return MaterialPageRoute(builder: (_) => SearchPageTvSeries());
        }
        // Kalau ada route lain yang dipakai di test, tambah di sini
        return MaterialPageRoute(builder: (_) => const Scaffold(body: Text('Unknown route')));
      },
    ));
  }

  testWidgets('should show loading indicator when any category is loading', (WidgetTester tester) async {
    when(mockTvSeriesListCubit.state).thenReturn(const TvSeriesListState.loading(category: 'now_playing'));

    await tester.pumpWidget(makeTestableWidget(HomeTvSeriesPage()));

    expect(find.byType(CircularProgressIndicator), findsWidgets);
  });


  testWidgets('should display now playing tvSeriess when loaded', (WidgetTester tester) async {
    when(mockTvSeriesListCubit.state).thenReturn(TvSeriesListState.loaded(nowPlayingTvSeries: testTvSeriesList));

    await tester.pumpWidget(makeTestableWidget(HomeTvSeriesPage()));

    expect(find.text('Now Playing'), findsOneWidget);
    expect(find.byType(CachedNetworkImage), findsWidgets);
  });

  testWidgets('should display popular tvSeriess section when loaded', (WidgetTester tester) async {
    when(mockTvSeriesListCubit.state).thenReturn(TvSeriesListState.loaded(popularTvSeries: testTvSeriesList));

    await tester.pumpWidget(makeTestableWidget(HomeTvSeriesPage()));

    expect(find.text('Popular'), findsOneWidget);
    expect(find.text('See More'), findsAtLeast(1));
  });

  testWidgets('should display top rated tvSeriess section when loaded', (WidgetTester tester) async {
    when(mockTvSeriesListCubit.state).thenReturn(TvSeriesListState.loaded(topRatedTvSeries: testTvSeriesList));

    await tester.pumpWidget(makeTestableWidget(HomeTvSeriesPage()));

    expect(find.text('Top Rated'), findsOneWidget);
    expect(find.text('See More'), findsAtLeast(1));
  });

  testWidgets('should navigate to search page when search icon is tapped', (WidgetTester tester) async {
    when(mockTvSeriesListCubit.state).thenReturn(const TvSeriesListState.initial());

    await tester.pumpWidget(makeTestableWidget(HomeTvSeriesPage()));

    await tester.tap(find.byIcon(Icons.search));
    await tester.pumpAndSettle();

    expect(find.byType(SearchPageTvSeries), findsOneWidget);
  });

}