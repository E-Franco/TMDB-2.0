import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String backdropPath;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final num voteAverage;
  final int voteCount;

  const MovieEntity({
    required this.backdropPath,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  List<Object> get props => [
        backdropPath,
        overview,
        popularity,
        posterPath,
        releaseDate,
        title,
        voteAverage,
        voteCount,
      ];
}
