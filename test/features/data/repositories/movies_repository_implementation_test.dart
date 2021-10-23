import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb/features/data/datasources/movies_datasource.dart';
import 'package:tmdb/features/data/repositores/movies_repository_implementation.dart';
import 'package:tmdb/features/domain/entities/movie_entity.dart';

void main() {
  late MoviesRepository repository;
  late  IMoviesDatasource source;


  setUp((){
    source = MockMoviesDatasource();
    repository = MoviesRepository(source);
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

  test( '', (){
    when(() => source.getMoviesFromDate()).thenReturn(Right(movies));
  });
}

class MockMoviesDatasource extends Mock implements IMoviesDatasource{}