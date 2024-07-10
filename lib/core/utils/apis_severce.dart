import 'package:bookly_app/constants.dart';
import 'package:dio/dio.dart';

class ApisSeverce {
  final _baseUrl = Constants.kApiUrl;

  final Dio _dio;

  ApisSeverce(this._dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
