import 'package:tmdb/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:tmdb/core/usecase/usecase.dart';
import 'package:tmdb/features/domain/entities/movie_entity.dart';
import 'package:tmdb/features/domain/repositories/movies_repository.dart';

class GetMoviesFromYearUsecase implements UseCase<MovieEntity, int> {
  final IMoviesRepository repository;
  GetMoviesFromYearUsecase(this.repository);

  @override
  Future<Either<Failure, MovieEntity>> call(int year) async{
    return await repository.getMoviesFromYear(year: year);
  }
}
