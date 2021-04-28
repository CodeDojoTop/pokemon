import 'package:dio/dio.dart';

class RestClient {
  late final Dio _client;
  RestClient() {
    _client = Dio();
  }
}
