import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:tmdb/core/usecase/usecase.dart';
import 'package:tmdb/features/domain/entities/movie_entity.dart';
import 'package:tmdb/features/domain/repositories/movies_repository.dart';
import 'package:tmdb/features/domain/usecases/get_movies_usecase.dart';

void main() {
  late GetMoviesUsecase usecase;
  late IMoviesRepository repository;
  final noParams = NoParams();

  setUp(() {
    repository = MockMoviesRepository();
    usecase = GetMoviesUsecase(repository);
  });

  final tMovies = MovieEntity(
    backdropPath: '',
    overview: '',
    popularity: 10,
    posterPath: '',
    releaseDate: '',
    title: '',
    voteAverage: 5,
    voteCount: 5,
  );

  test('Should get movies', () async {
    mocktail.when(() => repository.getMoviesFromYear()).thenAnswer((_) async => Right(tMovies));
    final result = await usecase(noParams);
    expect(result, Right(tMovies));
    mocktail.verify(() => repository.getMoviesFromYear());
  });
}

class MockMoviesRepository extends mocktail.Mock implements IMoviesRepository {}
