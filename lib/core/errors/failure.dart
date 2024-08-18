import 'package:dio/dio.dart';

class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout in connection with API server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout in connection with API server");
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with API server");
      case DioExceptionType.cancel:
        return ServerFailure("Request to API server was cancelled");
      case DioExceptionType.unknown:
        return ServerFailure(
            "Connection to API server failed due to internet connection");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!);
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate in connection with API server");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error");

      default:
        return ServerFailure("Something went wrong !!!");
    }
  }
  factory ServerFailure.fromBadResponse(int statusCode) {
    switch (statusCode) {
      case 400:
        return ServerFailure("Bad Request");
      case 401:
        return ServerFailure("Unauthorized");
      case 403:
        return ServerFailure("Forbidden");
      case 404:
        return ServerFailure("Not Found");
      case 409:
        return ServerFailure("Conflict");
      case 422:
        return ServerFailure("Unprocessable Entity");
      case 429:
        return ServerFailure("Too Many Requests");

      case 502:
        return ServerFailure("Bad Gateway");
      case 503:
        return ServerFailure("Service Unavailable");

      case 500:
        return ServerFailure("Internal Server Error");
      default:
        return ServerFailure("Something went wrong");
    }
  }
}
