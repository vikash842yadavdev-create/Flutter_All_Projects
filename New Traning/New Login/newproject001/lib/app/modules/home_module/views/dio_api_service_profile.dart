import 'package:dio/dio.dart';

class DioApiServiceProfile {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://dummyjson.com/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  Future<Response> getData() async {
    final response = dio.get('/users');
    return response;
  }
}
