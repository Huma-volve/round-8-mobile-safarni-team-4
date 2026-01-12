import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:round_8_mobile_safarni_team4/core/network/tocken_storage_service.dart';

class ApiService {
  late Dio dio;
  late CookieJar cookieJar;

  final tokenService = TokenStorageService();

  String get _baseUrlFromEnv => ApiEndPoints.baseUrl;

  ApiService._();

  static Future<ApiService> create() async {
    final instance = ApiService._();
    await instance._initialize();
    return instance;
  }

  Future<void> _initialize() async {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrlFromEnv,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    dio.interceptors.add(CookieManager(cookieJar));

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final savedToken = await tokenService.getToken();
          if (savedToken != null &&
              savedToken.isNotEmpty &&
              savedToken != 'none') {
            options.headers['Authorization'] = 'Bearer $savedToken';
          }
          return handler.next(options);
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401) {
            // التوكن انتهى أو غير صحيح
            print("Token is invalid or expired. Cleaning up...");

            // استدعاء الدالة الصحيحة من ملف TokenStorage الخاص بكِ
            await tokenService.deleteToken();

            // (اختياري) يمكنك هنا إضافة كود للانتقال لصفحة الـ Login
          }
          return handler.next(e);
        },
      ),
    );

    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
      ),
    );
  }

  Future<Map<String, dynamic>> get({
    required String urlEndPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.get(urlEndPoint, queryParameters: queryParameters);
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String urlEndPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.post(
      urlEndPoint,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> put({
    required String urlEndPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.put(
      urlEndPoint,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> delete({
    required String urlEndPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.delete(
      urlEndPoint,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> patch({
    required String urlEndPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await dio.patch(
      urlEndPoint,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
