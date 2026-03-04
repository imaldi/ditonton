import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/presentation/bloc/tv_series/top_rated_tv_series_cubit.dart';
import 'package:ditonton/presentation/pages/movies/top_rated_movies_page.dart';
import 'package:ditonton/presentation/pages/tv_series/top_rated_tv_series_page.dart';
import 'package:ditonton/presentation/provider/tv_series/top_rated_tv_series_notifier.dart';
import 'package:ditonton/presentation/widgets/tv_series_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../../dummy_data/dummy_objects.dart';
import 'top_rated_tv_series_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TopRatedTvSeriesCubit>()])
void main() {
  late MockTopRatedTvSeriesCubit mockCubit;

  setUp(() {
    mockCubit = MockTopRatedTvSeriesCubit();
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<TopRatedTvSeriesCubit>.value(
      value: mockCubit,
      child: MaterialApp(
        home: body,
      ),
    );
  }


  testWidgets('Page should display progress bar when loading',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          const TopRatedTvSeriesState(state: RequestState.Loading),
        );

        await tester.pumpWidget(makeTestableWidget(TopRatedTvSeriesPage()));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        expect(find.byType(Center), findsOneWidget);
      });

  testWidgets('Page should display ListView when data is loaded',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          TopRatedTvSeriesState(
            state: RequestState.Loaded,
            tvSeries: testTvSeriesList,
          ),
        );

        await tester.pumpWidget(makeTestableWidget(TopRatedTvSeriesPage()));

        expect(find.byType(ListView), findsOneWidget);
        expect(find.byType(TvSeriesCard), findsWidgets);
      });

  testWidgets('Page should display text with message when Error',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          const TopRatedTvSeriesState(
            state: RequestState.Error,
            message: 'Error message',
          ),
        );

        await tester.pumpWidget(makeTestableWidget(TopRatedTvSeriesPage()));

        final textFinder = find.byKey(const Key('error_message'));

        expect(textFinder, findsOneWidget);
        expect(find.text('Error message'), findsOneWidget);
      });
}
