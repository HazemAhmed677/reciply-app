// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';

class FaluireService {
  final String errorMsg;

  FaluireService(this.errorMsg);

  factory FaluireService.fromDioException(
      {required DioExceptionType dioExecption,
      dynamic response,
      int? statusCode}) {
    switch (dioExecption) {
      case DioExceptionType.connectionTimeout:
        return FaluireService('Connection timeout, Please try again');
      case DioExceptionType.sendTimeout:
        return FaluireService('Send timeout, Check your network');
      case DioExceptionType.receiveTimeout:
        return FaluireService('Receive timeout, Check your network');
      case DioExceptionType.badCertificate:
        return FaluireService('Bad certificate, Please try later');
      case DioExceptionType.badResponse:
        return FaluireService.fromBadResponse(
            statusCode: statusCode, response: response);
      case DioExceptionType.cancel:
        return FaluireService('Request to server was canceled');
      case DioExceptionType.connectionError:
        return FaluireService('No Internet connection');
      case DioExceptionType.unknown:
        return FaluireService('Oops, there something wrong!');
      default:
        return FaluireService('Oops, there something wrong!');
    }
  }
  factory FaluireService.fromBadResponse({int? statusCode, dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return FaluireService(
        response['error']['message'],
      );
    } else if (statusCode == 404) {
      return FaluireService('Your request not found');
    } else {
      return FaluireService('Oops, there somthing wrong!');
    }
  }
}
