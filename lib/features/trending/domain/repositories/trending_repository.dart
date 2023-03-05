import 'package:dartz/dartz.dart';
import 'package:yes_watching_app/common/failure.dart';

import '../entities/trending.dart';

abstract class TrendingRepository {
  Future<Either<Failure, List<Trending>>> getTrendingAll();
}
