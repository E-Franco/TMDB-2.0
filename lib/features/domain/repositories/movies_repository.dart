import 'package:dartz/dartz.dart';
import 'package:tmdb/core/errors/failures.dart';
import 'package:tmdb/features/domain/entities/movie_entity.dart';

abstract class IMoviesRepository{
  Future<Either<Failure, MovieEntity>> getMoviesFromYear({int? year});
}