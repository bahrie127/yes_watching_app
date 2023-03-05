import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;
import 'package:yes_watching_app/features/trending/data/datasources/trending_remote_datasource.dart';
import 'package:yes_watching_app/features/trending/data/repositories/trending_repository_impl.dart';
import 'package:yes_watching_app/features/trending/domain/repositories/trending_repository.dart';
import 'package:yes_watching_app/features/trending/domain/usecases/get_trending_all.dart';
import 'package:yes_watching_app/features/trending/presentation/bloc/trending_bloc.dart';

final locator = GetIt.instance;

void init() {
  //bloc

  locator.registerFactory(() => TrendingBloc(locator()));

  // use case

  locator.registerLazySingleton(() => GetTrendingAll(repository: locator()));

  // repository

  locator.registerLazySingleton<TrendingRepository>(
      () => TrendingRepositoryImpl(remoteDatasource: locator()));

  // data sources

  locator.registerLazySingleton<TrendingRemoteDatasource>(
      () => TrendingRemoteDatasourceImpl(client: locator()));

  // external
  locator.registerLazySingleton(() => http.Client());
}
