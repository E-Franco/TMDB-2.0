import 'package:tmdb/features/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel({
    required String backdropPath,
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required String title,
    required num voteAverage,
    required int voteCount,
  }) : super(
          backdropPath: backdropPath,
          overview: overview,
          popularity: popularity,
          posterPath: posterPath,
          releaseDate: releaseDate,
          title: title,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );
}
