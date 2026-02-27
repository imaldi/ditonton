import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/get_popular_tv_series.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_tv_series_state.dart';
part 'popular_tv_series_cubit.freezed.dart';

class PopularTvSeriesCubit extends Cubit<PopularTvSeriesState> {
  final GetPopularTvSeries getPopularTvSeries;

  PopularTvSeriesCubit({required this.getPopularTvSeries})
      : super(const PopularTvSeriesState());

  Future<void> fetchPopularTvSeries() async {
    emit(state.copyWith(
      state: RequestState.Loading,
      message: '',
    ));

    final result = await getPopularTvSeries.execute();

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