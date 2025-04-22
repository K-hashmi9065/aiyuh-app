import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Providers
  // sl.registerFactory(() => UserProvider(sl()));

  // UseCases
  // sl.registerLazySingleton(() => GetUser(sl()));

  // Repositories
  // sl.registerLazySingleton<UserRepository>(
    // () => UserRepositoryImpl(remoteDataSource: sl()),
  // );

  // DataSources
  // sl.registerLazySingleton<UserRemoteDataSource>(
  //   () => UserRemoteDataSourceImpl(),
  // );
}
