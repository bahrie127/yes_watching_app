import 'package:dartz/dartz.dart';

import '../../../../common/failure.dart';
import '../repositories/movie_repository.dart';

class GetPopularMovie {
  final MovieRepository repository;
  GetPopularMovie({
    required this.repository,
  });

  Future<Either<Failure, List>> execute() {
    return repository.getPopularMovie();
  }
}
