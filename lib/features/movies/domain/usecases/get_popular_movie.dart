import 'package:dartz/dartz.dart';
import 'package:yes_watching_app/features/movies/domain/entities/movie.dart';

import '../../../../common/failure.dart';
import '../repositories/movie_repository.dart';

class GetPopularMovie {
  final MovieRepository repository;
  GetPopularMovie({
    required this.repository,
  });

  Future<Either<Failure, List<Movie>>> execute() {
    return repository.getPopularMovie();
  }
}
