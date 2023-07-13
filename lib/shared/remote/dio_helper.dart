import 'package:dio/dio.dart';




class NetworkService {

  final Dio dio = Dio();


  Future<Response> get(String url) async {
    try {
      final response = await dio.get(url);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}


