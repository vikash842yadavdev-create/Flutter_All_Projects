class ApiResponse<T> {
  final bool success;
  final String message;
  final T? data;
  final int? statusCode;
  final Map<String, dynamic>? errors;

  ApiResponse({
    required this.success,
    required this.message,
    this.data,
    this.statusCode,
    this.errors,
  });

  factory ApiResponse.success(T data, {String? mesasge}) {
    return ApiResponse<T>(
      success: true,
      message: mesasge ?? 'Success',
      data: data,
      statusCode: 200,
    );
  }

  factory ApiResponse.error(
    String mesasge, {
    int? statusCode,
    Map<String, dynamic>? errors,
  }) {
    return ApiResponse<T>(
      success: false,
      message: mesasge,
      statusCode: statusCode,
      errors: errors,
    );
  }
}
