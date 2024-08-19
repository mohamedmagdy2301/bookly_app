import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupSericeLocator() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      ApiService(
        Dio(),
      ),
    ),
  );
}
