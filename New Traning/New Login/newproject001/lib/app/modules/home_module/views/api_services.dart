import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  Future<Response> profileData() async {
    final response = await dio.get('/users');
    return response;
  }
}
