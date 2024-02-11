import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

const originApi = 'https://10.99.77.247:5012';

class DioClient {
  Dio dio = Dio();

  static Dio simpleDio() {
    Dio dio = Dio(
      BaseOptions(
          baseUrl: originApi,
          headers: {'Content-Type': 'application/json; charset=UTF-8'}),
    );
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      HttpClient dioClient = HttpClient();
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    return dio;
  }

  static Dio dioWithCookie(String cookie) {
    return Dio(BaseOptions(baseUrl: originApi, headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'Cookie': cookie
    }));
  }
}

class ApiKeys {
  final login = '/accounts/chefs/login';
}
