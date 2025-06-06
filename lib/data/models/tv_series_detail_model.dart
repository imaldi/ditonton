import 'package:ditonton/domain/entities/tv_series_detail.dart';
import 'package:equatable/equatable.dart';

import 'genre_model.dart';

class TvSeriesDetailResponse extends Equatable {
  final bool adult;
  final String backdropPath;
  final List<CreatedByModel> createdBy;
  final List<dynamic> episodeRunTime;
  final String firstAirDate;
  final List<GenreModel> genres;
  final String homepage;
  final int id;
  final bool inProduction;
  final List<String> languages;
  final String lastAirDate;
  final TEpisodeToAirModel? lastEpisodeToAir;
  final String name;
  final TEpisodeToAirModel? nextEpisodeToAir;
  final List<NetworkModel> networks;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final List<String> originCountry;
  final String originalLanguage;
  final String originalName;
  final String overview;
  final double popularity;
  final String posterPath;
  final List<NetworkModel> productionCompanies;
  final List<ProductionCountryModel> productionCountries;
  final List<SeasonModel> seasons;
  final List<SpokenLanguageModel> spokenLanguages;
  final String status;
  final String tagline;
  final String type;
  final double voteAverage;
  final int voteCount;

  TvSeriesDetailResponse({
    required this.adult,
    required this.backdropPath,
    required this.createdBy,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.inProduction,
    required this.languages,
    required this.lastAirDate,
    required this.lastEpisodeToAir,
    required this.name,
    required this.nextEpisodeToAir,
    required this.networks,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.seasons,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.type,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TvSeriesDetailResponse.fromJson(Map<String, dynamic> json) {
    return TvSeriesDetailResponse(
      adult: json["adult"],
      backdropPath: json["backdrop_path"],
      createdBy: List<CreatedByModel>.from(
          json["created_by"].map((x) => CreatedByModel.fromJson(x))),
      episodeRunTime: List<dynamic>.from(json["episode_run_time"]),
      firstAirDate: json["first_air_date"],
      genres: List<GenreModel>.from(
          json["genres"].map((x) => GenreModel.fromJson(x))),
      homepage: json["homepage"],
      id: json["id"],
      inProduction: json["in_production"],
      languages: List<String>.from(json["languages"]),
      lastAirDate: json["last_air_date"],
      lastEpisodeToAir:
          TEpisodeToAirModel.fromJson(json["last_episode_to_air"]),
      name: json["name"],
      nextEpisodeToAir: json["next_episode_to_air"] != null
          ? TEpisodeToAirModel.fromJson(json["next_episode_to_air"])
          : null,
      networks: List<NetworkModel>.from(
          json["networks"].map((x) => NetworkModel.fromJson(x))),
      numberOfEpisodes: json["number_of_episodes"],
      numberOfSeasons: json["number_of_seasons"],
      originCountry: List<String>.from(json["origin_country"]),
      originalLanguage: json["original_language"],
      originalName: json["original_name"],
      overview: json["overview"],
      popularity: json["popularity"].toDouble(),
      posterPath: json["poster_path"],
      productionCompanies: List<NetworkModel>.from(
          json["production_companies"].map((x) => NetworkModel.fromJson(x))),
      productionCountries: List<ProductionCountryModel>.from(
          json["production_countries"]
              .map((x) => ProductionCountryModel.fromJson(x))),
      seasons: List<SeasonModel>.from(
          json["seasons"].map((x) => SeasonModel.fromJson(x))),
      spokenLanguages: List<SpokenLanguageModel>.from(
          json["spoken_languages"].map((x) => SpokenLanguageModel.fromJson(x))),
      status: json["status"],
      tagline: json["tagline"],
      type: json["type"],
      voteAverage: json["vote_average"].toDouble(),
      voteCount: json["vote_count"],
    );
  }

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "created_by": List<dynamic>.from(createdBy.map((x) => x.toJson())),
        "episode_run_time": List<dynamic>.from(episodeRunTime),
        "first_air_date": firstAirDate,
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "homepage": homepage,
        "id": id,
        "in_production": inProduction,
        "languages": List<dynamic>.from(languages),
        "last_air_date": lastAirDate,
        "last_episode_to_air": lastEpisodeToAir?.toJson(),
        "name": name,
        "next_episode_to_air":
            nextEpisodeToAir != null ? nextEpisodeToAir?.toJson() : null,
        "networks": List<dynamic>.from(networks.map((x) => x.toJson())),
        "number_of_episodes": numberOfEpisodes,
        "number_of_seasons": numberOfSeasons,
        "origin_country": List<dynamic>.from(originCountry),
        "original_language": originalLanguage,
        "original_name": originalName,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "production_companies":
            List<dynamic>.from(productionCompanies.map((x) => x.toJson())),
        "production_countries":
            List<dynamic>.from(productionCountries.map((x) => x.toJson())),
        "seasons": List<dynamic>.from(seasons.map((x) => x.toJson())),
        "spoken_languages":
            List<dynamic>.from(spokenLanguages.map((x) => x.toJson())),
        "status": status,
        "tagline": tagline,
        "type": type,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };

  TvSeriesDetail toEntity() {
    return TvSeriesDetail(
      adult: this.adult,
      backdropPath: this.backdropPath,
      createdBy: this.createdBy.map((e) => e.toEntity()).toList(),
      episodeRunTime: this.episodeRunTime,
      firstAirDate: this.firstAirDate,
      genres: this.genres.map((genre) => genre.toEntity()).toList(),
      homepage: this.homepage,
      id: this.id,
      inProduction: this.inProduction,
      languages: this.languages,
      lastAirDate: this.lastAirDate,
      lastEpisodeToAir: this.lastEpisodeToAir?.toEntity(),
      name: this.name,
      nextEpisodeToAir: this.nextEpisodeToAir?.toEntity(),
      networks: this.networks.map((e) => e.toEntity()).toList(),
      numberOfEpisodes: this.numberOfEpisodes,
      numberOfSeasons: this.numberOfSeasons,
      originCountry: this.originCountry,
      originalLanguage: this.originalLanguage,
      originalName: this.originalName,
      overview: this.overview,
      popularity: this.popularity,
      posterPath: this.posterPath,
      productionCompanies: this.productionCompanies.map((e) => e.toEntity()).toList(),
      productionCountries: this.productionCountries.map((e) => e.toEntity()).toList(),
      seasons: this.seasons.map((e) => e.toEntity()).toList(),
      spokenLanguages: this.spokenLanguages.map((e) => e.toEntity()).toList(),
      status: this.status,
      tagline: this.tagline,
      type: this.type,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount,
    );
  }

  @override
  List<Object?> get props => [
    adult,
    backdropPath,
    createdBy,
    episodeRunTime,
    firstAirDate,
    genres,
    homepage,
    id,
    inProduction,
    languages,
    lastAirDate,
    lastEpisodeToAir,
    name,
    nextEpisodeToAir,
    networks,
    numberOfEpisodes,
    numberOfSeasons,
    originCountry,
    originalLanguage,
    originalName,
    overview,
    popularity,
    posterPath,
    productionCompanies,
    productionCountries,
    seasons,
    spokenLanguages,
    status,
    tagline,
    type,
    voteAverage,
    voteCount,
  ];
}

class CreatedByModel extends Equatable {
  final int id;
  final String creditId;
  final String name;
  final String originalName;
  final int gender;
  final dynamic profilePath;

  CreatedByModel({
    required this.id,
    required this.creditId,
    required this.name,
    required this.originalName,
    required this.gender,
    required this.profilePath,
  });
  // fromJson
  factory CreatedByModel.fromJson(Map<String, dynamic> json) => CreatedByModel(
        id: json["id"],
        creditId: json["credit_id"],
        name: json["name"],
        originalName: json["original_name"],
        gender: json["gender"],
        profilePath: json["profile_path"],
      );

  // toJson
  Map<String, dynamic> toJson() => {
        "id": id,
        "credit_id": creditId,
        "name": name,
        "original_name": originalName,
        "gender": gender,
        "profile_path": profilePath,
      };

  // toEntity
  CreatedBy toEntity() => CreatedBy(
        id: id,
        creditId: creditId,
        name: name,
        originalName: originalName,
        gender: gender,
        profilePath: profilePath,
      );

  @override
  List<Object?> get props => [
        id,
        creditId,
        name,
        originalName,
        gender,
        profilePath,
      ];
}

// class GenreModel extends Equatable {
//   final int id;
//   final String name;
//
//   GenreModel({
//     required this.id,
//     required this.name,
//   });
//
//   @override
//   List<Object?> get props => [id, name];
//
//   // fromJson
//   factory GenreModel.fromJson(Map<String, dynamic> json) => GenreModel(
//         id: json["id"],
//         name: json["name"],
//       );
//
//   // toJson
//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//       };
//
//   // toEntity
//   Genre toEntity() => Genre(
//         id: id,
//         name: name,
//       );
// }

class TEpisodeToAirModel extends Equatable {
  final int id;
  final String? name;
  final String? overview;
  final double? voteAverage;
  final int? voteCount;
  final String? airDate;
  final int? episodeNumber;
  final String? episodeType;
  final String? productionCode;
  final int? runtime;
  final int? seasonNumber;
  final int? showId;
  final String? stillPath;

  TEpisodeToAirModel({
    required this.id,
    required this.name,
    required this.overview,
    required this.voteAverage,
    required this.voteCount,
    required this.airDate,
    required this.episodeNumber,
    required this.episodeType,
    required this.productionCode,
    required this.runtime,
    required this.seasonNumber,
    required this.showId,
    required this.stillPath,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        overview,
        voteAverage,
        voteCount,
        airDate,
        episodeNumber,
        episodeType,
        productionCode,
        runtime,
        seasonNumber,
        showId,
        stillPath,
      ];

  // fromJson
  factory TEpisodeToAirModel.fromJson(Map<String, dynamic> json) =>
      TEpisodeToAirModel(
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        voteAverage: json["vote_average"],
        voteCount: json["vote_count"],
        airDate: json["air_date"],
        episodeNumber: json["episode_number"],
        episodeType: json["episode_type"],
        productionCode: json["production_code"],
        runtime: json["runtime"],
        seasonNumber: json["season_number"],
        showId: json["show_id"],
        stillPath: json["still_path"],
      );

  // toJson
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "overview": overview,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "air_date": airDate,
        "episode_number": episodeNumber,
        "episode_type": episodeType,
        "production_code": productionCode,
        "runtime": runtime,
        "season_number": seasonNumber,
        "show_id": showId,
        "still_path": stillPath,
      };

  // toEntity
  TEpisodeToAir toEntity() => TEpisodeToAir(
        id: id,
        name: name,
        overview: overview,
        voteAverage: voteAverage,
        voteCount: voteCount,
        airDate: airDate,
        episodeNumber: episodeNumber,
        episodeType: episodeType,
        productionCode: productionCode,
        runtime: runtime,
        seasonNumber: seasonNumber,
        showId: showId,
        stillPath: stillPath,
      );
}

class NetworkModel extends Equatable {
  final int id;
  final String logoPath;
  final String name;
  final String originCountry;

  NetworkModel({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  @override
  List<Object?> get props => [
        id,
        logoPath,
        name,
        originCountry,
      ];

  // fromJson
  factory NetworkModel.fromJson(Map<String, dynamic> json) => NetworkModel(
        id: json["id"],
        logoPath: json["logo_path"],
        name: json["name"],
        originCountry: json["origin_country"],
      );

  // toJson
  Map<String, dynamic> toJson() => {
        "id": id,
        "logo_path": logoPath,
        "name": name,
        "origin_country": originCountry,
      };

  // toEntity
  Network toEntity() => Network(
        id: id,
        logoPath: logoPath,
        name: name,
        originCountry: originCountry,
      );
}

class ProductionCountryModel extends Equatable {
  final String iso31661;
  final String name;

  ProductionCountryModel({
    required this.iso31661,
    required this.name,
  });

  @override
  List<Object?> get props => [iso31661, name];

  // fromJson
  factory ProductionCountryModel.fromJson(Map<String, dynamic> json) =>
      ProductionCountryModel(
        iso31661: json["iso_3166_1"],
        name: json["name"],
      );

  // toJson
  Map<String, dynamic> toJson() => {
        "iso_3166_1": iso31661,
        "name": name,
      };

  // toEntity
  ProductionCountry toEntity() => ProductionCountry(
        iso31661: iso31661,
        name: name,
      );
}

class SeasonModel extends Equatable {
  final DateTime airDate;
  final int episodeCount;
  final int id;
  final String name;
  final String overview;
  final String? posterPath;
  final int seasonNumber;
  final double voteAverage;

  SeasonModel({
    required this.airDate,
    required this.episodeCount,
    required this.id,
    required this.name,
    required this.overview,
    required this.posterPath,
    required this.seasonNumber,
    required this.voteAverage,
  });

  @override
  List<Object?> get props => [
        airDate,
        episodeCount,
        id,
        name,
        overview,
        posterPath,
        seasonNumber,
        voteAverage,
      ];

  // fromJson
  factory SeasonModel.fromJson(Map<String, dynamic> json) => SeasonModel(
        airDate: DateTime.parse(json["air_date"]),
        episodeCount: json["episode_count"],
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        seasonNumber: json["season_number"],
        voteAverage: json["vote_average"].toDouble(),
      );

  // toJson
  Map<String, dynamic> toJson() => {
        "air_date": airDate.toIso8601String(),
        "episode_count": episodeCount,
        "id": id,
        "name": name,
        "overview": overview,
        "poster_path": posterPath,
        "season_number": seasonNumber,
        "vote_average": voteAverage,
      };

  // toEntity
  Season toEntity() => Season(
        airDate: airDate,
        episodeCount: episodeCount,
        id: id,
        name: name,
        overview: overview,
        posterPath: posterPath,
        seasonNumber: seasonNumber,
        voteAverage: voteAverage,
      );
}

class SpokenLanguageModel extends Equatable {
  final String englishName;
  final String iso6391;
  final String name;

  SpokenLanguageModel({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  @override
  List<Object?> get props => [englishName, iso6391, name];

  // fromJson
  factory SpokenLanguageModel.fromJson(Map<String, dynamic> json) =>
      SpokenLanguageModel(
        englishName: json["english_name"],
        iso6391: json["iso_639_1"],
        name: json["name"],
      );

  // toJson
  Map<String, dynamic> toJson() => {
        "english_name": englishName,
        "iso_639_1": iso6391,
        "name": name,
      };

  // toEntity
  SpokenLanguage toEntity() => SpokenLanguage(
        englishName: englishName,
        iso6391: iso6391,
        name: name,
      );
}
