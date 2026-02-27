
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_top_rated_tv_series.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_rated_tv_series_state.dart';
part 'top_rated_tv_series_cubit.freezed.dart';

class TopRatedTvSeriesCubit extends Cubit<TopRatedTvSeriesState> {
  final GetTopRatedTvSeries getTopRatedTvSeries;

  TopRatedTvSeriesCubit({required this.getTopRatedTvSeries})
      : super(const TopRatedTvSeriesState());

  Future<void> fetchTopRatedTvSeries() async {
    emit(state.copyWith(
      state: RequestState.Loading,
      message: '',
    ));

    final result = await getTopRatedTvSeries.execute();

    result.fold(
          (failure) {
        emit(state.copyWith(
          state: RequestState.Error,
          message: failure.message,
        ));
      },
          (tvSeriesData) {
        emit(state.copyWith(
          state: RequestState.Loaded,
          tvSeries: tvSeriesData,
          message: '',
        ));
      },
    );
  }
}