import 'package:get_it/get_it.dart';
import 'package:provider_demo/core/services/authentication_service.dart';
import 'package:provider_demo/core/services/api.dart';
import 'package:provider_demo/core/viewmodels/comments_model.dart';
import 'package:provider_demo/core/viewmodels/login_model.dart';

import 'package:provider_demo/core/viewmodels/home_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<LoginModel>(() => LoginModel());
  // Services
  locator.registerLazySingleton<Api>(() => Api());
  locator.registerLazySingleton<AuthenticationService>(
      () => AuthenticationService());
  // Factories
  locator.registerFactory<HomeModel>(() => HomeModel());
  locator.registerFactory<CommentsModel>(() => CommentsModel());
}
