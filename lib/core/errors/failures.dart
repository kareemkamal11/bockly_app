import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error');
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response!.data,
          e.response!.statusCode!,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request cancelled');
      case DioExceptionType.unknown:
        if (e.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error, please try again!');
      default:
        return ServerFailure(
            'Oops! Something went wrong, please try again later!');
    }
  }

  factory ServerFailure.fromResponse(dynamic response, int statusCode) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your Request not found, please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try again later!');
    } else {
      return ServerFailure(
          'Oops! Something went wrong, please try again later!');
    }
  }
}
