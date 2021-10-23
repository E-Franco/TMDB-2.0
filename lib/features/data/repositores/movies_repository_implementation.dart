import 'package:dartz/dartz.dart';

import 'package:tmdb/core/errors/failures.dart';
import 'package:tmdb/features/data/datasources/movies_datasource.dart';
import 'package:tmdb/features/domain/entities/movie_entity.dart';
import 'package:tmdb/features/domain/repositories/movies_repository.dart';

class MoviesRepository implements IMoviesRepository {
  final IMoviesDatasource datasource;
  MoviesRepository(this.datasource);

  @override
  Future<Either<Failure, MovieEntity>> getMoviesFromYear({required int year}) {
    throw UnimplementedError();
  }
}
