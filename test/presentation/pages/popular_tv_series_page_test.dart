import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/presentation/bloc/tv_series/popular_tv_series_cubit.dart';
import 'package:ditonton/presentation/pages/tv_series/popular_tv_series_page.dart';
import 'package:ditonton/presentation/widgets/tv_series_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'popular_tv_series_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<PopularTvSeriesCubit>()])
void main() {
  late MockPopularTvSeriesCubit mockCubit;

  setUp(() {
    mockCubit = MockPopularTvSeriesCubit();
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<PopularTvSeriesCubit>.value(
      value: mockCubit,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets('Page should display center progress bar when loading',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          PopularTvSeriesState(state: RequestState.Loading),
        );

        await tester.pumpWidget(makeTestableWidget(PopularTvSeriesPage()));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        expect(find.byType(Center), findsOneWidget);
      });

  testWidgets('Page should display ListView when data is loaded',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          PopularTvSeriesState(
            state: RequestState.Loaded,
            tvSeries: testTvSeriesList, // atau dummy list TvSeries kalau beda entity
          ),
        );

        await tester.pumpWidget(makeTestableWidget(PopularTvSeriesPage()));

        expect(find.byType(ListView), findsOneWidget);
        expect(find.byType(TvSeriesCard), findsWidgets); // kalau pakai TvSeriesCard di ListView
      });

  testWidgets('Page should display text with message when Error',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          const PopularTvSeriesState(
            state: RequestState.Error,
            message: 'Error message',
          ),
        );

        await tester.pumpWidget(makeTestableWidget(PopularTvSeriesPage()));

        final textFinder = find.byKey(const Key('error_message'));

        expect(textFinder, findsOneWidget);
        expect(find.text('Error message'), findsOneWidget);
      });

  // testWidgets('Page should display center progress bar when loading',
  //     (WidgetTester tester) async {
  //   when(mockNotifier.state).thenReturn(RequestState.Loading);
  //
  //   final progressBarFinder = find.byType(CircularProgressIndicator);
  //   final centerFinder = find.byType(Center);
  //
  //   await tester.pumpWidget(_makeTestableWidget(PopularTvSeriesPage()));
  //
  //   expect(centerFinder, findsOneWidget);
  //   expect(progressBarFinder, findsOneWidget);
  // });
  //
  // testWidgets('Page should display ListView when data is loaded',
  //     (WidgetTester tester) async {
  //   when(mockNotifier.state).thenReturn(RequestState.Loaded);
  //   when(mockNotifier.tvSeries).thenReturn(<TvSeries>[]);
  //
  //   final listViewFinder = find.byType(ListView);
  //
  //   await tester.pumpWidget(_makeTestableWidget(PopularTvSeriesPage()));
  //
  //   expect(listViewFinder, findsOneWidget);
  // });
  //
  // testWidgets('Page should display text with message when Error',
  //     (WidgetTester tester) async {
  //   when(mockNotifier.state).thenReturn(RequestState.Error);
  //   when(mockNotifier.message).thenReturn('Error message');
  //
  //   final textFinder = find.byKey(Key('error_message'));
  //
  //   await tester.pumpWidget(_makeTestableWidget(PopularTvSeriesPage()));
  //
  //   expect(textFinder, findsOneWidget);
  // });
}
