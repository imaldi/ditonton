import 'package:ditonton/common/failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/movie/search_movies.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/test_helper.mocks.dart';

void main() {
  late SearchMovies usecase;
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
    usecase = SearchMovies(mockMovieRepository);
    provideDummy<Either<Failure, List<Movie>>>(Right(tMovieList));
  });

  final tMovies = <Movie>[];
  final tQuery = 'Spiderman';

  test('should get list of movie from the repository', () async {
    // arrange
    when(mockMovieRepository.searchMovies(tQuery))
        .thenAnswer((_) async => Right(tMovies));
    // act
    final result = await usecase.execute(tQuery);
    // assert
    expect(result, Right(tMovies));
  });
}
