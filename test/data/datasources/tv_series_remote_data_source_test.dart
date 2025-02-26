import 'dart:convert';
import 'dart:io';

import 'package:ditonton/data/datasources/tv_series_remote_data_source.dart';
import 'package:ditonton/common/exception.dart';
import 'package:ditonton/data/models/tv_series_detail_model.dart';
import 'package:ditonton/data/models/tv_series_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  const API_KEY = 'api_key=2174d146bb9c0eab47529b2e77d6b526';
  const BASE_URL = 'https://api.themoviedb.org/3';

  late TvSeriesRemoteDataSourceImpl dataSource;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = TvSeriesRemoteDataSourceImpl(client: mockHttpClient);
  });

  group('get Airing Today TvSeries', () {
    final tTvSeriesList =
        TvSeriesResponse.fromJson(json.decode(readJson('dummy_data/airing_today.json')))
            .tvSeriesList;

    test('should return list of TvSeries Model when the response code is 200', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/airing_today?$API_KEY'))).thenAnswer(
          (_) async => http.Response(readJson('dummy_data/airing_today.json'), 200,
              headers: {HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'}));
      // act
      final result = await dataSource.getAiringTodayTvSeries();
      // assert
      expect(result, equals(tTvSeriesList));
    });

    test('should throw a ServerException when the response code is 404 or other', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/airing_today?$API_KEY')))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      // act
      final call = dataSource.getAiringTodayTvSeries();
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });

  group('get Popular TvSeries', () {
    // ini penyebab eror nya, ambil json tv series!!!
    final tTvSeriesList =
        TvSeriesResponse.fromJson(json.decode(readJson('dummy_data/popular_tv.json'))).tvSeriesList;

    test('should return list of tv series when response is success (200)', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/popular?$API_KEY')))
          .thenAnswer((_) async => http.Response(readJson('dummy_data/popular_tv.json'), 200, headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
      }));
      // act
      final result = await dataSource.getPopularTvSeries();
      // assert
      expect(result, tTvSeriesList);
    });

    test('should throw a ServerException when the response code is 404 or other', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/popular?$API_KEY')))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      // act
      final call = dataSource.getPopularTvSeries();
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });

  group('get Top Rated TvSeries', () {
    final tTvSeriesList =
        TvSeriesResponse.fromJson(json.decode(readJson('dummy_data/top_rated_tv.json')))
            .tvSeriesList;

    test('should return list of tv series when response code is 200 ', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/top_rated?$API_KEY')))
          .thenAnswer((_) async => http.Response(readJson('dummy_data/top_rated_tv.json'), 200, headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
      }));
      // act
      final result = await dataSource.getTopRatedTvSeries();
      // assert
      expect(result, tTvSeriesList);
    });

    test('should throw ServerException when response code is other than 200', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/top_rated?$API_KEY')))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      // act
      final call = dataSource.getTopRatedTvSeries();
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });

  group('get tv series detail', () {
    final tId = 1;
    final tTvSeriesDetail =
        TvSeriesDetailResponse.fromJson(json.decode(readJson('dummy_data/tv_detail.json')));

    test('should return tv series detail when the response code is 200', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/$tId?$API_KEY')))
          .thenAnswer((_) async => http.Response(readJson('dummy_data/tv_detail.json'), 200, headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
      }));
      // act
      final result = await dataSource.getTvSeriesDetail(tId);
      // assert
      expect(result, equals(tTvSeriesDetail));
    });

    test('should throw Server Exception when the response code is 404 or other', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/$tId?$API_KEY')))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      // act
      final call = dataSource.getTvSeriesDetail(tId);
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });

  group('get tv series recommendations', () {
    final tTvSeriesList =
        TvSeriesResponse.fromJson(json.decode(readJson('dummy_data/tv_recommendations.json')))
            .tvSeriesList;
    final tId = 1;

    test('should return list of TvSeries Model when the response code is 200', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/$tId/recommendations?$API_KEY'))).thenAnswer(
          (_) async => http.Response(readJson('dummy_data/tv_recommendations.json'), 200,
              headers: {HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'}));
      // act
      final result = await dataSource.getTvSeriesRecommendations(tId);
      // assert
      expect(result, equals(tTvSeriesList));
    });

    test('should throw Server Exception when the response code is 404 or other', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/tv/$tId/recommendations?$API_KEY')))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      // act
      final call = dataSource.getTvSeriesRecommendations(tId);
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });

  group('search tv series', () {
    final tSearchResult =
        TvSeriesResponse.fromJson(json.decode(readJson('dummy_data/search_loki_series.json')))
            .tvSeriesList;
    final tQuery = 'Loki';

    test('should return list of tv series when response code is 200', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/search/tv?$API_KEY&query=$tQuery'))).thenAnswer(
          (_) async => http.Response(readJson('dummy_data/search_loki_series.json'), 200, headers: {
            HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
          }));
      // act
      final result = await dataSource.searchTvSeries(tQuery);
      // assert
      expect(result, tSearchResult);
    });

    test('should throw ServerException when response code is other than 200', () async {
      // arrange
      when(mockHttpClient.get(Uri.parse('$BASE_URL/search/tv?$API_KEY&query=$tQuery')))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      // act
      final call = dataSource.searchTvSeries(tQuery);
      // assert
      expect(() => call, throwsA(isA<ServerException>()));
    });
  });
}
