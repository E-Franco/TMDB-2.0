import 'package:tmdb/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:tmdb/core/usecase/usecase.dart';
import 'package:tmdb/features/domain/entities/movie_entity.dart';
import 'package:tmdb/features/domain/repositories/movies_repository.dart';

class GetMoviesUsecase implements UseCase<MovieEntity, NoParams> {
  final IMoviesRepository repository;
  GetMoviesUsecase(this.repository);

  @override
  Future<Either<Failure, MovieEntity>> call(NoParams params) async{
    return await repository.getMoviesFromYear();
  }
}
