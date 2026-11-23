import 'package:dio/dio.dart';
import 'package:e_commerce_app/features/core/constants/api_constants.dart';
import 'package:e_commerce_app/features/core/localdata/shared_pref.dart';

class ApiServices {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: Duration(milliseconds: ApiConstants.connectTimerOutsMs),
      receiveTimeout: Duration(milliseconds: ApiConstants.receiveTimerOutsMs),
      headers: {'Content-Type': ApiConstants.contentType},
    ),
  );

  Future<Response> getProductsByCategory(String endpoint) async {
    try {
      final response = await dio.get(endpoint);
      return response;
    } on DioException {
      rethrow;
    }
  }

  final dioAuth = Dio(
    BaseOptions(
      baseUrl: ApiConstants.authBaseUrl,
      connectTimeout: Duration(milliseconds: ApiConstants.connectTimerOutsMs),
      receiveTimeout: Duration(milliseconds: ApiConstants.receiveTimerOutsMs),
      headers: {'Content-Type': ApiConstants.contentType},
    ),
  );

  Future<Response> postUserLogin({
    required String endpoint,
    required String userName,
    required String password,
  }) async {
    try {
      final response = await dioAuth.post(
        endpoint,
        data: {'username': userName, 'password': password, 'expiresInMins': 30},
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  final Dio dioUserProfile = Dio(
    BaseOptions(
      baseUrl: ApiConstants.authBaseUrl,
      connectTimeout: Duration(milliseconds: ApiConstants.connectTimerOutsMs),
      receiveTimeout: Duration(milliseconds: ApiConstants.receiveTimerOutsMs),
      headers: {'Content-Type': ApiConstants.contentType},
    ),
  );

  ApiServices() {
    dioUserProfile.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SharedPref.getAccessToken();

          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }

          handler.next(options);
        },
      ),
    );
  }

  Future<Response> getUserProfileData() async {
    final response = await dioUserProfile.get(ApiConstants.authGetme);
    return response;
  }
}
