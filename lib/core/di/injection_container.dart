import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import '../network/api_client.dart';
import '../network/network_info.dart';

final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl()));

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());
}
