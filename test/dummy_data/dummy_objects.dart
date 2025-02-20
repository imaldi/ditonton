import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/data/models/movie_table.dart';
import 'package:ditonton/data/models/tv_series_detail_model.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';

final testMovie = Movie(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalTitle: 'Spider-Man',
  overview:
      'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  releaseDate: '2002-05-01',
  title: 'Spider-Man',
  video: false,
  voteAverage: 7.2,
  voteCount: 13507,
);

final testTvSeries = TvSeries(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalName: 'Loki',
  overview:
  'Loki',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  firstAirDate: '2002-05-01',
  name: 'Spider-Man',
  voteAverage: 7.2,
  voteCount: 13507,
);

final testMovieList = [testMovie];

final testTvSeriesList = [testTvSeries];


final testMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 120,
  title: 'title',
  voteAverage: 1,
  voteCount: 1,
);

final testTvSeriesDetail = TvSeriesDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalName: 'originalName',
  overview: 'overview',
  posterPath: 'posterPath',
  firstAirDate: 'firstAirDate',
  name: 'name',
  voteAverage: 1,
  voteCount: 1,
  createdBy: [],
  episodeRunTime: [],
  homepage: 'https://google.com',
  inProduction: false,
  languages: [],
  lastAirDate: '',
  networks: [],
  numberOfEpisodes: 12,
  numberOfSeasons: 3,
  originCountry: ['en'],
  originalLanguage: 'en',
  popularity: 4.5,
  productionCompanies: [],
  productionCountries: [],
  seasons: [],
  spokenLanguages: [],
  status: 'Status',
  tagline: 'Tagline',
  type: '',
  lastEpisodeToAir: TEpisodeToAir(
    id: 1,
    name: "name",
    overview: "overview",
    voteAverage: 2.2,
    voteCount: 10,
    airDate: "2024-02-02",
    episodeNumber: 12,
    episodeType: "episodeType",
    productionCode: "pCode",
    runtime: 3600,
    seasonNumber: 3,
    showId: 12312,
    stillPath: "/stillPath",
  ),
  nextEpisodeToAir: TEpisodeToAir(
    id: 1,
    name: "name",
    overview: "overview",
    voteAverage: 2.2,
    voteCount: 10,
    airDate: "2024-02-02",
    episodeNumber: 12,
    episodeType: "episodeType",
    productionCode: "pCode",
    runtime: 3600,
    seasonNumber: 3,
    showId: 12314,
    stillPath: "/stillPath",
  ),
);

final testWatchlistMovie = Movie.watchlist(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testWatchlistTvSeries = TvSeries.watchlist(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieTable = MovieTable(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testTvSeriesTable = TvSeriesTable(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};

final testTvSeriesMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'name': 'name',
};
