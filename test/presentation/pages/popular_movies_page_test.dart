import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/presentation/bloc/movie/popular_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/popular_movies_state.dart';
import 'package:ditonton/presentation/pages/movies/popular_movies_page.dart';
import 'package:ditonton/presentation/widgets/movie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'popular_movies_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<PopularMoviesCubit>()])
void main() {
  late MockPopularMoviesCubit mockCubit;

  setUp(() {
    mockCubit = MockPopularMoviesCubit();
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<PopularMoviesCubit>.value(
      value: mockCubit,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets('Page should display center progress bar when loading',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          const PopularMoviesState(state: RequestState.Loading),
        );

        await tester.pumpWidget(makeTestableWidget(PopularMoviesPage()));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        expect(find.byType(Center), findsOneWidget);
      });

  testWidgets('Page should display ListView when data is loaded',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          PopularMoviesState(
            state: RequestState.Loaded,
            movies: testMovieList, // atau dummy list TvSeries kalau beda entity
          ),
        );

        await tester.pumpWidget(makeTestableWidget(PopularMoviesPage()));

        expect(find.byType(ListView), findsOneWidget);
        expect(find.byType(MovieCard), findsWidgets); // kalau pakai MovieCard di ListView
      });

  testWidgets('Page should display text with message when Error',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          const PopularMoviesState(
            state: RequestState.Error,
            message: 'Error message',
          ),
        );

        await tester.pumpWidget(makeTestableWidget(PopularMoviesPage()));

        final textFinder = find.byKey(const Key('error_message'));

        expect(textFinder, findsOneWidget);
        expect(find.text('Error message'), findsOneWidget);
      });
}