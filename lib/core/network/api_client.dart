import 'package:dio/dio.dart';
import '../errors/failure.dart';

class ApiClient {
  final Dio dio;

  ApiClient(this.dio);

  Future<Map<String, dynamic>> get(String url) async {
    try {
      final response = await dio.get(url);
      return response.data; // Data from the response
    } on DioException catch (e) {
      if (e.response != null) {
        // Server response error
        throw ServerFailure(
            'Error: ${e.response?.statusCode} - ${e.response?.statusMessage}');
      } else {
        // Network or other errors
        throw NetworkFailure('Failed to connect to the server');
      }
    }
  }

  Future<Map<String, dynamic>> post(
      String url, Map<String, dynamic> body) async {
    try {
      final response = await dio.post(
        url,
        data: body,
      );
      return response.data; // Data from the response
    } on DioException catch (e) {
      if (e.response != null) {
        // Server response error
        throw ServerFailure(
            'Error: ${e.response?.statusCode} - ${e.response?.statusMessage}');
      } else {
        // Network or other errors
        throw NetworkFailure('Failed to connect to the server');
      }
    }
  }
}
