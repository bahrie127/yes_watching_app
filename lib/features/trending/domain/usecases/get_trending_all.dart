import 'package:dartz/dartz.dart';
import 'package:yes_watching_app/common/failure.dart';
import 'package:yes_watching_app/features/trending/domain/entities/trending.dart';

import '../repositories/trending_repository.dart';

class GetTrendingAll {
  final TrendingRepository repository;
  GetTrendingAll({
    required this.repository,
  });

  Future<Either<Failure, List<Trending>>> execute() {
    return repository.getTrendingAll();
  }
}
