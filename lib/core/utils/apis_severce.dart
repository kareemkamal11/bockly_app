import 'package:bookly_app/constants.dart';
import 'package:dio/dio.dart';

class ApisSeverce {
  final _baseUrl = Constants.kApiUrl;

  final Dio dio;

  ApisSeverce(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
