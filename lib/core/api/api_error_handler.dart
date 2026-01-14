import 'dart:io';
import 'package:dio/dio.dart';

enum ApiErrorKey {
  connectionError,
  connectionTimeout,
  sendTimeout,
  receiveTimeout,
  badRequest,
  cancel,
  unknownError,
  badCertificate,
  couldNotFindSource,
  somethingWentWrong,
  socialLoginError,
}

class ApiErrorHandler {
  String handle(Object error) {
    if (error is Exception) {
      switch (error) {
        case SocketException():
          return ApiErrorKey.connectionError.toString();

        case HttpException():
          return ApiErrorKey.couldNotFindSource.toString();

        case FormatException():
          return ApiErrorKey.badRequest.toString();

        case DioException():
          switch (error.type) {
            case DioExceptionType.connectionTimeout:
              return ApiErrorKey.connectionTimeout.toString();

            case DioExceptionType.sendTimeout:
              return ApiErrorKey.sendTimeout.toString();

            case DioExceptionType.receiveTimeout:
              return ApiErrorKey.receiveTimeout.toString();

            case DioExceptionType.badResponse:
              return ApiErrorKey.badRequest.toString();

            case DioExceptionType.cancel:
              return ApiErrorKey.cancel.toString();

            case DioExceptionType.connectionError:
              return ApiErrorKey.connectionError.toString();

            case DioExceptionType.badCertificate:
              return ApiErrorKey.badCertificate.toString();

            case DioExceptionType.unknown:
              return ApiErrorKey.unknownError.toString();
          }

        default:
          return ApiErrorKey.somethingWentWrong.toString();
      }
    }
    return ApiErrorKey.somethingWentWrong.toString();
  }
}
