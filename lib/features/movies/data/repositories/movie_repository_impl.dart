import 'package:dartz/dartz.dart';

import 'package:yes_watching_app/common/failure.dart';
import 'package:yes_watching_app/features/movies/domain/entities/movie.dart';
import 'package:yes_watching_app/features/movies/domain/repositories/movie_repository.dart';

import '../datasources/movie_remote_datasource.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDatasource remoteDatasource;
  MovieRepositoryImpl({
    required this.remoteDatasource,
  });
  @override
  Future<Either<Failure, List<Movie>>> getPopularMovie()async{
    try{
      final result = await remoteDatasource.getPopularMovie();
      return Right(result.results!.map((e) => e.toEntity()).toList());
    }catch (e){
      return const Left(ServerFailure('server error'));
    }

  }

}
