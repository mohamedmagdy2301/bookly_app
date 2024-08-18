import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  Dio dio = Dio();
  Future<dynamic> get(String url) async {
    final response = await dio.get("$_baseUrl$url");
    return response.data;
  }
}
