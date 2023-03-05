import 'package:dartz/dartz.dart';

import 'package:yes_watching_app/common/failure.dart';
import 'package:yes_watching_app/features/trending/data/datasources/trending_remote_datasource.dart';
import 'package:yes_watching_app/features/trending/domain/entities/trending.dart';
import 'package:yes_watching_app/features/trending/domain/repositories/trending_repository.dart';

class TrendingRepositoryImpl implements TrendingRepository {
  final TrendingRemoteDatasource remoteDatasource;
  TrendingRepositoryImpl({
    required this.remoteDatasource,
  });
  @override
  Future<Either<Failure, List<Trending>>> getTrendingAll() async {
    try {
      final result = await remoteDatasource.getTrendingAll();
      return Right(result.results!.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Left(CommonFailure(e.toString()));
    }
  }
}
