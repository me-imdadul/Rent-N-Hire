import 'package:dio/dio.dart';

class AuthApi {
  final Dio dio;

  AuthApi({required this.dio});

  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await dio.post('/login', data: {
      'username': username,
      'password': password,
    });
    return response.data;
  }

  Future<Map<String, dynamic>> signUp(String username, String password) async {
    final response = await dio.post('/signup', data: {
      'username': username,
      'password': password,
    });
    return response.data;
  }
}
