import 'package:bookly/core/services/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton(ApiService(getIt<Dio>()));
  getIt.registerSingleton<HomeRepoImpelementaion>(
    HomeRepoImpelementaion(getIt<ApiService>()),
  );
}
