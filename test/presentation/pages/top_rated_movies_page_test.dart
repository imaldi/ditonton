import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/presentation/bloc/movie/top_rated_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/top_rated_movies_state.dart';
import 'package:ditonton/presentation/pages/movies/top_rated_movies_page.dart';
import 'package:ditonton/presentation/widgets/movie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'top_rated_movies_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TopRatedMoviesCubit>()])
void main() {
  late MockTopRatedMoviesCubit mockCubit;

  setUp(() {
    mockCubit = MockTopRatedMoviesCubit();
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<TopRatedMoviesCubit>.value(
      value: mockCubit,
      child: MaterialApp(
        home: body,
      ),
    );
  }

  testWidgets('Page should display progress bar when loading',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          const TopRatedMoviesState(state: RequestState.Loading),
        );

        await tester.pumpWidget(makeTestableWidget(TopRatedMoviesPage()));

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        expect(find.byType(Center), findsOneWidget);
      });

  testWidgets('Page should display ListView when data is loaded',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          TopRatedMoviesState(
            state: RequestState.Loaded,
            movies: testMovieList,
          ),
        );

        await tester.pumpWidget(makeTestableWidget(TopRatedMoviesPage()));

        expect(find.byType(ListView), findsOneWidget);
        expect(find.byType(MovieCard), findsWidgets);
      });

  testWidgets('Page should display text with message when Error',
          (WidgetTester tester) async {
        when(mockCubit.state).thenReturn(
          const TopRatedMoviesState(
            state: RequestState.Error,
            message: 'Error message',
          ),
        );

        await tester.pumpWidget(makeTestableWidget(TopRatedMoviesPage()));

        final textFinder = find.byKey(const Key('error_message'));

        expect(textFinder, findsOneWidget);
        expect(find.text('Error message'), findsOneWidget);
      });
}