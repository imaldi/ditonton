import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/tv_series/search_tv_series.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_series_search_state.dart';
part 'tv_series_search_cubit.freezed.dart';

class TvSeriesSearchCubit extends Cubit<TvSeriesSearchState> {
  final SearchTvSeries searchTvSeries;

  TvSeriesSearchCubit({required this.searchTvSeries})
      : super(const TvSeriesSearchState());

  Future<void> fetchTvSeriesSearch(String query) async {
    if (query.trim().isEmpty) {
      emit(state.copyWith(
        state: RequestState.Empty,
        searchResult: [],
        message: '',
      ));
      return;
    }

    emit(state.copyWith(
      state: RequestState.Loading,
      message: '',
    ));

    final result = await searchTvSeries.execute(query);

    result.fold(
          (failure) {
        emit(state.copyWith(
          state: RequestState.Error,
          message: failure.message,
        ));
      },
          (data) {
        emit(state.copyWith(
          state: RequestState.Loaded,
          searchResult: data,
          message: '',
        ));
      },
    );
  }

  // Opsional: clear search
  void clearSearch() {
    emit(state.copyWith(
      state: RequestState.Empty,
      searchResult: [],
      message: '',
    ));
  }
}