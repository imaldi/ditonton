import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/presentation/bloc/movie/popular_movies_cubit.dart';
import 'package:ditonton/presentation/bloc/movie/popular_movies_state.dart';
import 'package:ditonton/presentation/provider/movie/popular_movies_notifier.dart';
import 'package:ditonton/presentation/widgets/movie_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class PopularMoviesPage extends StatefulWidget {
  static const ROUTE_NAME = '/popular-movie';

  @override
  _PopularMoviesPageState createState() => _PopularMoviesPageState();
}

class _PopularMoviesPageState extends State<PopularMoviesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        context.read<PopularMoviesCubit>()
            .fetchPopularMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Movies'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<PopularMoviesCubit, PopularMoviesState>(
          builder: (context, state) {
            // return state.whenOrNull($default) ?? ;
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
