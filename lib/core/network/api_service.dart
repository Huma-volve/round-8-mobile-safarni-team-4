import 'package:ansicolor/ansicolor.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:round_8_mobile_safarni_team4/core/network/tocken_storage_service.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

class ApiService {
  late Dio dio;
  late CookieJar cookieJar;

  final tokenService = TokenStorageService();

  String get _baseUrlFromEnv => ApisEndpoints.baseUrl;

  ApiService._();

  static Future<ApiService> create() async {
    final instance = ApiService._();
    await instance._initialize();
    return instance;
  }

  Future<void> _initialize() async {
    // 2. تهيئة مسار التخزين للكوكيز (هذا هو الجزء المفقود)
    final appDocDir = await getApplicationDocumentsDirectory();
    cookieJar = PersistCookieJar(
      storage: FileStorage("${appDocDir.path}/.cookies/"),
    );

    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrlFromEnv,
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
          'Authorization' :'Bearer 66|5E3cZpkglcclJA7HdmyCydFWFuYw0jsuBXw1CrQa7f67bd8a'
        },
      ),
    );

    // 3. الآن يمكن استخدام cookieJar بأمان لأنه تم تهيئته بالأعلى
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
            print("Token is invalid or expired. Cleaning up...");
            await tokenService.deleteToken();
          }
          return handler.next(e);
        },
      ),
    );

    // dio.interceptors.add(
    //   LogInterceptor(
    //     requestBody: true,
    //     responseBody: true,
    //     requestHeader: true,
    //   ),
    // );
    dio.interceptors.add(
      TalkerDioLogger(
        settings: TalkerDioLoggerSettings(
          enabled: kDebugMode,
          printResponseHeaders: true,
          printRequestHeaders: true,
          printResponseTime: true,
          printResponseRedirects: true,
          // Blue http requests logs in console
          requestPen: AnsiPen()..white(),
          // Green http responses logs in console
          responsePen: AnsiPen()..green(),
          // Error http logs in console
          errorPen: AnsiPen()..red(),
        ),
      ),
    );
  }

  // ... (باقي دوال get, post, put, delete كما هي)
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
