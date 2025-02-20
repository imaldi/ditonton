import 'dart:convert';

import 'package:ditonton/data/models/tv_series_model.dart';
import 'package:ditonton/data/models/tv_series_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../json_reader.dart';

void main() {
  final tTvSeriesModel = TvSeriesModel(
    adult: false,
    backdropPath: "/cchlQWYrnMPyl1EbjZWCzeAz8l5.jpg",
    genreIds: [18,
      35],
    id: 36361,
    originalName: "Ulice",
    overview: """Ulice is a Czech soap opera produced and broadcast by Nova. In the Czech language Ulice means street. The show describes the lives of the Farský, Jordán, Boháč, Nikl, and Liška families and many other people that live in Prague. Their daily battle against real problems of living in a modern world like divorce, love, betrayal and illness or disease. Ulice often shows crime.""",
    popularity: 2867.899,
    posterPath: "/gFEHva8Csx18hMGJJZ6gi4sFSKR.jpg",
    firstAirDate: "2005-09-05",
    name: "Ulice",
    originCountry: ['CZ'],
    originalLanguage: 'cs',
    voteAverage: 4.6,
    voteCount: 31,
  );
  final tTvSeriesResponseModel =
      TvSeriesResponse(tvSeriesList: <TvSeriesModel>[tTvSeriesModel]);
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(readJson('dummy_data/now_playing_tv.json'));
      // act
      final result = TvSeriesResponse.fromJson(jsonMap);
      // assert
      expect(result, tTvSeriesResponseModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () async {
      // arrange

      // act
      final result = tTvSeriesResponseModel.toJson();
      // assert
      final expectedJsonMap = {
        "results": [
          {
            "adult": false,
            "backdrop_path": "/cchlQWYrnMPyl1EbjZWCzeAz8l5.jpg",
            "genre_ids": [18,
              35],
            "id": 36361,
            "overview": """Ulice is a Czech soap opera produced and broadcast by Nova. In the Czech language Ulice means street. The show describes the lives of the Farský, Jordán, Boháč, Nikl, and Liška families and many other people that live in Prague. Their daily battle against real problems of living in a modern world like divorce, love, betrayal and illness or disease. Ulice often shows crime.""",
            "original_name": "Ulice",
            "popularity": 2867.899,
            "poster_path": "/gFEHva8Csx18hMGJJZ6gi4sFSKR.jpg",
            "first_air_date": "2005-09-05",
            "name": "Ulice",
            "origin_country": ['CZ'],
            "original_language": 'cs',
            "vote_average": 4.6,
            "vote_count": 31
          }
        ],
      };
      expect(result, expectedJsonMap);
    });
  });
}
