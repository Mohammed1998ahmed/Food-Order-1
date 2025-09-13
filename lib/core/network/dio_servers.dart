import 'package:dio/dio.dart';
import 'constants.dart';

class DioService {
  late final Dio _dio;

  DioService() {
    _dio = Dio(BaseOptions(
      baseUrl: Constants.basePath,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ));
  }

  // ----------- GET Request -----------
  Future<Response> getRequest(
    String path, {
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    return await _sendRequest(
      method: 'GET',
      path: path,
      queryParameters: queryParameters,
      token: token,
    );
  }

  // ----------- POST Request -----------
  Future<Response> postRequest(
    String path, {
    dynamic data,
    String? token,
  }) async {
    return await _sendRequest(
      method: 'POST',
      path: path,
      data: data,
      token: token,
    );
  }

  // ----------- PUT Request -----------
  Future<Response> putRequest(
    String path, {
    dynamic data,
    String? token,
  }) async {
    return await _sendRequest(
      method: 'PUT',
      path: path,
      data: data,
      token: token,
    );
  }

  // ----------- DELETE Request -----------
  Future<Response> deleteRequest(
    String path, {
    dynamic data,
    String? token,
  }) async {
    return await _sendRequest(
      method: 'DELETE',
      path: path,
      data: data,
      token: token,
    );
  }

  // ----------- PATCH Request -----------
  Future<Response> patchRequest(
    String path, {
    dynamic data,
    String? token,
  }) async {
    return await _sendRequest(
      method: 'PATCH',
      path: path,
      data: data,
      token: token,
    );
  }

  // ----------- Generic Request Handler -----------
  Future<Response> _sendRequest({
    required String method,
    required String path,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    String? token,
  }) async {
    try {
      final options = Options(
        method: method,
        headers: {
          if (token != null) 'Authorization': 'Bearer $token',
          'Accept': 'application/json',
        },
        validateStatus: (status) => status != null && status < 500,
      );

      final response = await _dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );

      _handleResponse(response);
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    } catch (e) {
      print('Unexpected error: $e');
      rethrow;
    }
  }

  // ----------- Response Handler -----------
  void _handleResponse(Response response) {
    print('Status Code: ${response.statusCode}');
    if (response.statusCode == 200 || response.statusCode == 201) {
      print('✅ Request successful');
    } else if (response.statusCode == 401) {
      print('⛔ Unauthorized: ${response.statusCode}');
      // Redirect to login or handle token refresh if needed
    } else {
      print('⚠️ Unexpected status: ${response.statusCode}');
    }
  }

  // ----------- Error Handler -----------
  void _handleDioError(DioException error) {
    print('❌ Dio error occurred: ${error.type}');
    switch (error.type) {
      case DioExceptionType.cancel:
        print('Request cancelled');
        break;
      case DioExceptionType.connectionTimeout:
        print('Connection timeout');
        break;
      case DioExceptionType.receiveTimeout:
        print('Receive timeout');
        break;
      case DioExceptionType.sendTimeout:
        print('Send timeout');
        break;
      case DioExceptionType.badResponse:
        print('Bad response: ${error.response?.statusCode}');
        break;
      case DioExceptionType.unknown:
        print('Unknown error: ${error.message}');
        break;
      case DioExceptionType.badCertificate:
        print('Bad certificate: ${error.message}');
        break;
      default:
        print('Unhandled Dio error: ${error.message}');
        break;
    }
  }
}
