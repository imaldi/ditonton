import 'package:dartz/dartz.dart';
import 'package:ditonton/common/exception.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/data/datasources/tv_series_remote_data_source.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';
import 'package:ditonton/domain/repositories/tv_series_repository.dart';

class TvSeriesRepositoryImpl implements TvSeriesRepository {
  final TvSeriesRemoteDataSource remoteDataSource;
  // final MovieLocalDataSource localDataSource;

  TvSeriesRepositoryImpl({
    required this.remoteDataSource,
    // required this.localDataSource,
  });

  @override
  Future<Either<Failure, TvSeriesDetail>> getTvSeriesDetail(int id) async {
    try {
      final result = await remoteDataSource.getTvSeriesDetail(id);
      return Right(result.toEntity());
    } on ServerException {
      return Left(ServerFailure(''));
    }
    // on SocketException {
    //   return Left(ConnectionFailure('Failed to connect to the network'));
    // }
  }

  @override
  Future<Either<Failure, List<TvSeries>>> getTvSeriesRecommendations(int id) {
    // TODO: implement getMovieRecommendations
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<TvSeries>>> getNowPlayingTvSeries() {
    // TODO: implement getNowPlayingTvSeries
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<TvSeries>>> getPopularTvSeries() {
    // TODO: implement getPopularTvSeries
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<TvSeries>>> getTopRatedTvSeries() {
    // TODO: implement getTopRatedTvSeries
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<TvSeries>>> getWatchlistTvSeries() {
    // TODO: implement getWatchlistTvSeries
    throw UnimplementedError();
  }

  @override
  Future<bool> isAddedToWatchlist(int id) {
    // TODO: implement isAddedToWatchlist
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> removeWatchlist(TvSeriesDetail tvSeries) {
    // TODO: implement removeWatchlist
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> saveWatchlist(TvSeriesDetail tvSeries) {
    // TODO: implement saveWatchlist
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<TvSeries>>> searchTvSeries(String query) {
    // TODO: implement searchTvSeries
    throw UnimplementedError();
  }
}
