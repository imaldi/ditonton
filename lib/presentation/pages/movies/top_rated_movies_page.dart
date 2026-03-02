import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/presentation/bloc/movie/top_rated_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/top_rated_movies_state.dart';
import 'package:ditonton/presentation/provider/movie/top_rated_movies_notifier.dart';
import 'package:ditonton/presentation/widgets/movie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class TopRatedMoviesPage extends StatefulWidget {
  static const ROUTE_NAME = '/top-rated-movie';

  @override
  _TopRatedMoviesPageState createState() => _TopRatedMoviesPageState();
}

class _TopRatedMoviesPageState extends State<TopRatedMoviesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        context.read<TopRatedMoviesCubit>()
            .fetchTopRatedMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Rated Movies'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TopRatedMoviesCubit, TopRatedMoviesState>(
          builder: (context, state) {
            final requestState = state.state;
            final movies = state.movies;
            final message = state.message;

            return switch(requestState){
              RequestState.Empty => Container(),
              RequestState.Loading => Center(
                child: CircularProgressIndicator(),
              ),
              RequestState.Loaded => ListView.builder(
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return MovieCard(movie);
                },
                itemCount: movies.length,
              ),
              RequestState.Error => Center(
                key: Key('error_message'),
                child: Text(message),
              ),
            };
          },
        ),
      ),
    );
  }
}
