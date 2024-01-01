import 'package:get_it/get_it.dart';
import 'package:nedu_news/core/data/local/local_cache.dart';
import 'package:nedu_news/core/data/local/local_cache_impl.dart';
import 'package:nedu_news/core/data/remote/auth/auth_interface.dart';
import 'package:nedu_news/core/data/remote/auth/auth_repository.dart';
import 'package:nedu_news/core/data/remote/auth/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerSingleton(sharedPreferences);

  locator.registerLazySingleton<LocalCache>(
    () => LocalCacheImpl(
      sharedPreferences: sharedPreferences,
    ),
  );
  locator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(),
  );
  locator.registerLazySingleton<AuthService>(
    () => AuthServiceImpl(),
  );
}
