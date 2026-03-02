import 'package:cached_network_image/cached_network_image.dart';
import 'package:ditonton/presentation/bloc/movie/movie_list_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/movie_list_state.dart';
import 'package:ditonton/presentation/bloc/movie/movie_search_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/movie_search_state.dart';
import 'package:ditonton/presentation/pages/movies/home_movie_page.dart';
import 'package:ditonton/presentation/pages/movies/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'home_movie_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MovieListCubit>(), MockSpec<MovieSearchCubit>()])
void main() {
  late MockMovieListCubit mockMovieListCubit;
  late MockMovieSearchCubit mockMovieSearchCubit;

  setUp(() {
    mockMovieListCubit = MockMovieListCubit();
    mockMovieSearchCubit = MockMovieSearchCubit();

    when(mockMovieSearchCubit.state).thenReturn(const MovieSearchState());
  });

  Widget makeTestableWidget(Widget body) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieListCubit>.value(value: mockMovieListCubit),
        BlocProvider<MovieSearchCubit>.value(value: mockMovieSearchCubit),
      ],
      child: MaterialApp(
        home: body,
        onGenerateRoute: (settings) {
          if (settings.name == SearchPage.ROUTE_NAME) {
            return MaterialPageRoute(builder: (_) => SearchPage());
          }
          // Kalau ada route lain yang dipakai di test, tambah di sini
          return MaterialPageRoute(builder: (_) => const Scaffold(body: Text('Unknown route')));
        },
      ),
    );
  }

  testWidgets('should show loading indicator when any category is loading', (WidgetTester tester) async {
    when(mockMovieListCubit.state).thenReturn(const MovieListState.loading(category: 'now_playing'));

    await tester.pumpWidget(makeTestableWidget(HomeMoviePage()));

    expect(find.byType(CircularProgressIndicator), findsWidgets);
  });

  testWidgets('should display now playing movies when loaded', (WidgetTester tester) async {
    when(mockMovieListCubit.state).thenReturn(MovieListState.loaded(nowPlayingMovies: testMovieList));

    await tester.pumpWidget(makeTestableWidget(HomeMoviePage()));

    expect(find.text('Now Playing'), findsOneWidget);
    expect(find.byType(CachedNetworkImage), findsWidgets);
  });

  testWidgets('should display popular movies section when loaded', (WidgetTester tester) async {
    when(mockMovieListCubit.state).thenReturn(MovieListState.loaded(popularMovies: testMovieList));

    await tester.pumpWidget(makeTestableWidget(HomeMoviePage()));

    expect(find.text('Popular'), findsOneWidget);
    expect(find.text('See More'), findsAtLeast(1));
  });

  testWidgets('should display top rated movies section when loaded', (WidgetTester tester) async {
    when(mockMovieListCubit.state).thenReturn(MovieListState.loaded(topRatedMovies: testMovieList));

    await tester.pumpWidget(makeTestableWidget(HomeMoviePage()));

    expect(find.text('Top Rated'), findsOneWidget);
    expect(find.text('See More'), findsAtLeast(1));
  });

  testWidgets('should navigate to search page when search icon is tapped', (WidgetTester tester) async {
    when(mockMovieListCubit.state).thenReturn(const MovieListState.initial());

    await tester.pumpWidget(makeTestableWidget(HomeMoviePage()));

    await tester.tap(find.byIcon(Icons.search));
    await tester.pumpAndSettle();

    expect(find.byType(SearchPage), findsOneWidget);
  });
}
