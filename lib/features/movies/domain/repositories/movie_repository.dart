import 'package:dartz/dartz.dart';
import 'package:yes_watching_app/common/failure.dart';
import 'package:yes_watching_app/features/movies/domain/entities/movie.dart';

abstract class MovieRepository {

  Future<Either<Failure, List<Movie>>> getPopularMovie();

}