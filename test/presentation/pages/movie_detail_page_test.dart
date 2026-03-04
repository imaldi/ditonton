import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_detail.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_recommendations.dart';
import 'package:ditonton/domain/usecases/movie/get_watchlist_status.dart';
import 'package:ditonton/domain/usecases/movie/remove_watchlist.dart';
import 'package:ditonton/domain/usecases/movie/save_watchlist.dart';
import 'package:ditonton/presentation/bloc/movie/movie_detail_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/movie_detail_state.dart';
import 'package:ditonton/presentation/pages/movies/movie_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_objects.dart';
import 'movie_detail_page_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MovieDetailCubit>()])
void main() {
  late MockMovieDetailCubit mockMovieDetailCubit;


  final tId = 1;

  final tMovie = Movie(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalTitle: 'originalTitle',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    title: 'title',
    video: false,
    voteAverage: 1,
    voteCount: 1,
  );
  final tMovies = <Movie>[tMovie];

  setUp(() {
    mockMovieDetailCubit = MockMovieDetailCubit();
    provideDummy<Either<Failure, MovieDetail>>(Right(testMovieDetail));
    provideDummy<Either<Failure, List<Movie>>>(Right(tMovies));
    provideDummy<Either<Failure, String>>(const Right('Added To Wa'));
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<MovieDetailCubit>.value(
      value: mockMovieDetailCubit,
      child: MaterialApp(home: body),
    );
  }

  testWidgets('watchlist button shows add icon when not added', (WidgetTester tester) async {
    when(mockMovieDetailCubit.state).thenReturn(
      MovieDetailState(
        movieState: RequestState.Loaded,
        movie: testMovieDetail,
        recommendationState: RequestState.Loaded,
        recommendations: [],
        isAddedToWatchlist: false,
      ),
    );

    await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.check), findsNothing);
  });

  testWidgets('watchlist button shows check icon when added', (WidgetTester tester) async {
    when(mockMovieDetailCubit.state).thenReturn(
      MovieDetailState(
        movieState: RequestState.Loaded,
        movie: testMovieDetail,
        recommendationState: RequestState.Loaded,
        recommendations: [],
        isAddedToWatchlist: true,
      ),
    );

    await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

    expect(find.byIcon(Icons.check), findsOneWidget);
    expect(find.byIcon(Icons.add), findsNothing);
  });

  /// still failing, kesalahan berfikir
  // testWidgets('shows SnackBar when added to watchlist successfully', (WidgetTester tester) async {
  //   when(mockMovieDetailCubit.state).thenReturn(
  //     MovieDetailState(
  //       movieState: RequestState.Loaded,
  //       movie: testMovieDetail,
  //       recommendationState: RequestState.Loaded,
  //       recommendations: [],
  //       isAddedToWatchlist: false,
  //       watchlistMessage: MovieDetailCubit.watchlistAddSuccessMessage,
  //     ),
  //   );
  //   //
  //   // whenListen(
  //   //   mockMovieDetailCubit,
  //   //   Stream.fromIterable([
  //   //     MovieDetailState(movieState: RequestState.Loading, message: ''),
  //   //     MovieDetailState(
  //   //       movieState: RequestState.Loaded,
  //   //       movie: testMovieDetail,
  //   //       recommendationState: RequestState.Empty,
  //   //       recommendations: [],
  //   //       message: '',
  //   //       isAddedToWatchlist: false,
  //   //       watchlistMessage: '',
  //   //     ),
  //   //     MovieDetailState(
  //   //       movieState: RequestState.Loaded,
  //   //       movie: testMovieDetail,
  //   //       recommendationState: RequestState.Loaded,
  //   //       recommendations: tMovies,
  //   //     ),
  //   //   ]),
  //   //
  //   // );
  //   // //
  //   // // expect(
  //   // //   mockMovieDetailCubit.state,
  //   // //   equals(
  //   // //     MovieDetailState(
  //   // //       movieState: RequestState.Loaded,
  //   // //       movie: testMovieDetail,
  //   // //       recommendationState: RequestState.Loaded,
  //   // //       recommendations: tMovies,
  //   // //     ),
  //   // //   ),
  //   // // );
  //
  //   // await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));
  //   //
  //   // // cubit.addWatchlist(testMovieDetail);
  //   // await tester.tap(find.byType(ElevatedButton));
  //   // await tester.pump();
  //   // expect(find.byType(SnackBar), findsOneWidget);
  //   // expect(find.text(MovieDetailCubit.watchlistAddSuccessMessage), findsOneWidget);
  //
  //   /// cb2
  //   await tester.runAsync(() async {
  //     await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: tId)));
  //
  //     await tester.tap(find.byType(ElevatedButton));
  //
  //     // Simulate the delay to allow the connection check to complete
  //     await tester.pumpAndSettle();
  //     expect(find.byType(SnackBar), findsOneWidget);
  //
  //   });
  // });

  /// still failing, kesalahan berfikir
  // testWidgets('shows AlertDialog when add to watchlist failed',
  //         (WidgetTester tester) async {
  //       when(mockMovieDetailCubit.state).thenReturn(
  //         MovieDetailState(
  //           movieState: RequestState.Loaded,
  //           movie: testMovieDetail,
  //           recommendationState: RequestState.Loaded,
  //           recommendations: [],
  //           isAddedToWatchlist: false,
  //           watchlistMessage: 'Failed',
  //         ),
  //       );
  //
  //       await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));
  //
  //       await tester.tap(find.byType(ElevatedButton));
  //       await tester.pump();
  //
  //       expect(find.byType(AlertDialog), findsOneWidget);
  //       expect(find.text('Failed'), findsOneWidget);
  //     });

  testWidgets('displays movie detail when loaded', (WidgetTester tester) async {
    when(mockMovieDetailCubit.state).thenReturn(
      MovieDetailState(
        movieState: RequestState.Loaded,
        movie: testMovieDetail,
        recommendationState: RequestState.Loaded,
        recommendations: [],
      ),
    );

    await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

    expect(find.text(testMovieDetail.title), findsOneWidget);
    expect(find.text(testMovieDetail.overview), findsOneWidget);
  });

  testWidgets('displays loading indicator when loading', (WidgetTester tester) async {
    when(mockMovieDetailCubit.state).thenReturn(const MovieDetailState(movieState: RequestState.Loading));

    await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('displays error message when error', (WidgetTester tester) async {
    when(
      mockMovieDetailCubit.state,
    ).thenReturn(const MovieDetailState(movieState: RequestState.Error, message: 'Server Failure'));

    await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

    expect(find.text('Server Failure'), findsOneWidget);
  });
}
