import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart' as mocktail;
import 'package:tmdb/core/errors/failures.dart';
import 'package:tmdb/features/domain/entities/movie_entity.dart';
import 'package:tmdb/features/domain/repositories/movies_repository.dart';
import 'package:tmdb/features/domain/usecases/get_movies_from_year_usecase.dart';

void main() {
  late GetMoviesFromYearUsecase usecase;
  late IMoviesRepository repository;

  setUp(() {
    repository = MockMoviesRepository();
    usecase = GetMoviesFromYearUsecase(repository);
  });

  final movies = MovieEntity(
    backdropPath: '',
    overview: '',
    popularity: 10,
    posterPath: '',
    releaseDate: '',
    title: '',
    voteAverage: 5,
    voteCount: 5,
  );

  final int year = 2020;

  test('Should get movies from a given year', () async {
    mocktail.when(() => repository.getMoviesFromYear(year: year)).thenAnswer((_) async => Right(movies));
    final result = await usecase(year);
    expect(result, Right(movies));
    mocktail.verify(() => repository.getMoviesFromYear(year: year));
  });

  test('Should return a failure when the request dont succeed', () async {
    mocktail.when(() => repository.getMoviesFromYear(year: year)).thenAnswer((_) async => Left(ServerFailure()));
    final result = await usecase(year);
    expect(result, Left(ServerFailure()));
    mocktail.verify(() => repository.getMoviesFromYear(year: year));
  });
}

class MockMoviesRepository extends mocktail.Mock implements IMoviesRepository {}
