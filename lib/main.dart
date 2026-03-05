import 'dart:developer';

import 'package:ditonton/common/constants.dart';
import 'package:ditonton/common/utils.dart';
import 'package:ditonton/presentation/bloc/movie/movie_detail_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/movie_list_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/movie_search_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/popular_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/top_rated_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/watchlist_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/tv_series/popular_tv_series_cubit.dart';
import 'package:ditonton/presentation/bloc/tv_series/top_rated_tv_series_cubit.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_detail_cubit.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_list_cubit.dart';
import 'package:ditonton/presentation/bloc/tv_series/tv_series_search_cubit.dart';
import 'package:ditonton/presentation/bloc/tv_series/watchlist_tv_series_cubit.dart';
import 'package:ditonton/presentation/pages/about_page.dart';
import 'package:ditonton/presentation/pages/movies/movie_detail_page.dart';
import 'package:ditonton/presentation/pages/movies/home_movie_page.dart';
import 'package:ditonton/presentation/pages/movies/popular_movies_page.dart';
import 'package:ditonton/presentation/pages/movies/search_page.dart';
import 'package:ditonton/presentation/pages/movies/top_rated_movies_page.dart';
import 'package:ditonton/presentation/pages/movies/watchlist_movies_page.dart';
import 'package:ditonton/presentation/pages/tv_series/home_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series/popular_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series/search_page_tv_series.dart';
import 'package:ditonton/presentation/pages/tv_series/top_rated_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series/tv_series_detail_page.dart';
import 'package:ditonton/presentation/pages/tv_series/watchlist_tv_series_page.dart';
import 'package:ditonton/presentation/provider/movie/movie_detail_notifier.dart';
import 'package:ditonton/presentation/provider/movie/movie_list_notifier.dart';
import 'package:ditonton/presentation/provider/movie/movie_search_notifier.dart';
import 'package:ditonton/presentation/provider/movie/popular_movies_notifier.dart';
import 'package:ditonton/presentation/provider/movie/top_rated_movies_notifier.dart';
import 'package:ditonton/presentation/provider/movie/watchlist_movie_notifier.dart';
import 'package:ditonton/presentation/provider/tv_series/popular_tv_series_notifier.dart';
import 'package:ditonton/presentation/provider/tv_series/top_rated_tv_series_notifier.dart';
import 'package:ditonton/presentation/provider/tv_series/tv_series_detail_notifier.dart';
import 'package:ditonton/presentation/provider/tv_series/tv_series_list_notifier.dart';
import 'package:ditonton/presentation/provider/tv_series/tv_series_search_notifier.dart';
import 'package:ditonton/presentation/provider/tv_series/watchlist_tv_series_notifier.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:ditonton/injection.dart' as di;

void main() async {
  await di.init();
  await di.locator.allReady();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<MovieListCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<MovieListNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<MovieDetailCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<MovieDetailNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<MovieSearchCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<MovieSearchNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<TopRatedMoviesCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<TopRatedMoviesNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<PopularMoviesCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<PopularMoviesNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<WatchlistMoviesCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<WatchlistMovieNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<TvSeriesListCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<TvSeriesListNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<TvSeriesDetailCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<TvSeriesDetailNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<TvSeriesSearchCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<TvSeriesSearchNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<TopRatedTvSeriesCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<TopRatedTvSeriesNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<PopularTvSeriesCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<PopularTvSeriesNotifier>(),
        // ),
        BlocProvider(create: (_) => di.locator<WatchlistTvSeriesCubit>()),
        // ChangeNotifierProvider(
        //   create: (_) => di.locator<WatchlistTvSeriesNotifier>(),
        // ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          colorScheme: kColorScheme,
          primaryColor: kRichBlack,
          scaffoldBackgroundColor: kRichBlack,
          textTheme: kTextTheme,
          drawerTheme: kDrawerTheme,
        ),
        home: HomeMoviePage(),
        navigatorObservers: [routeObserver],
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case HomeMoviePage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => HomeMoviePage());
            case PopularMoviesPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => PopularMoviesPage());
            case TopRatedMoviesPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => TopRatedMoviesPage());

            case MovieDetailPage.ROUTE_NAME:
              final id = settings.arguments as int;
              return MaterialPageRoute(
                builder: (_) => MovieDetailPage(id: id),
                settings: settings,
              );
            case SearchPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => SearchPage());
            case WatchlistMoviesPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => WatchlistMoviesPage());
            case HomeTvSeriesPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => HomeTvSeriesPage());
            case PopularTvSeriesPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => PopularTvSeriesPage());
            case TopRatedTvSeriesPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => TopRatedTvSeriesPage());
            case TvSeriesDetailPage.ROUTE_NAME:
              final id = settings.arguments as int;
              return MaterialPageRoute(
                builder: (_) => TvSeriesDetailPage(id: id),
                settings: settings,
              );
            case SearchPageTvSeries.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => SearchPageTvSeries());
            case WatchlistTvSeriesPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => WatchlistTvSeriesPage());

            case AboutPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => AboutPage());
            default:
              return MaterialPageRoute(builder: (_) {
                return Scaffold(
                  body: Center(
                    child: Text('Page not found :('),
                  ),
                );
              });
          }
        },
      ),
    );
  }
}
