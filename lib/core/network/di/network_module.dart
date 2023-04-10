import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@module
abstract class NetworkModule {
  @singleton
  Dio dio() => Dio()
      ..options.baseUrl = "https://my-json-server.typicode.com";
}