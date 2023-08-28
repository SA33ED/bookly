import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);


//!Get
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    Response<dynamic> response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
  }


}
