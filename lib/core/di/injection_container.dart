import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

import '../network/api_client.dart';
import '../network/network_info.dart';

final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton<Box>(() => Hive.box('localDB'));

  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl()));

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());
}
