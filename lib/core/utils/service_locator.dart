import 'package:bookly_app/core/utils/apis_severce.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<ApisSeverce>(
    () => ApisSeverce(Dio()),
  );
  getIt.registerLazySingleton<HomeRepoImpl>(
    () => HomeRepoImpl(getIt.get<ApisSeverce>()),
  );
}
