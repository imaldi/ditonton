import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/presentation/bloc/tv_series/top_rated_tv_series_cubit.dart';
import 'package:ditonton/presentation/provider/tv_series/top_rated_tv_series_notifier.dart';
import 'package:ditonton/presentation/widgets/tv_series_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class TopRatedTvSeriesPage extends StatefulWidget {
  static const ROUTE_NAME = '/top-rated-tvSeries';

  @override
  _TopRatedTvSeriesPageState createState() => _TopRatedTvSeriesPageState();
}

class _TopRatedTvSeriesPageState extends State<TopRatedTvSeriesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        context.read<TopRatedTvSeriesCubit>()
            .fetchTopRatedTvSeries());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Rated TvSeries'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TopRatedTvSeriesCubit, TopRatedTvSeriesState>(
          builder: (context, state) {
            final requestState = state.state;
            final tvSeries = state.tvSeries;
            final message = state.message;

            return switch(requestState){
              RequestState.Empty => Container(),
              RequestState.Loading => Center(
                child: CircularProgressIndicator(),
              ),
              RequestState.Loaded => ListView.builder(
                itemBuilder: (context, index) {
                  return TvSeriesCard(tvSeries[index]);
                },
                itemCount: tvSeries.length,
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
