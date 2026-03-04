import 'package:ditonton/common/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/get_movie_recommendations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late GetMovieRecommendations usecase;
  late MockMovieRepository mockMovieRepository;

  final tMovie = Movie(
    adult: false,
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3],
    id: 1,
    originalTitle: 'originalTitle',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    title: 'title',
    video: false,
    voteAverage: 1,
    voteCount: 1,
  );
  final tMovieList = <Movie>[tMovie];

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetMovieRecommendations(mockMovieRepository);
    provideDummy<Either<Failure, List<Movie>>>(Right(tMovieList));
  });

  final tId = 1;
  final tMovies = <Movie>[];

  test('should get list of movie recommendations from the repository',
      () async {
    // arrange
    when(mockMovieRepository.getMovieRecommendations(tId))
        .thenAnswer((_) async => Right(tMovies));
    // act
    final result = await usecase.execute(tId);
    // assert
    expect(result, Right(tMovies));
  });
}
