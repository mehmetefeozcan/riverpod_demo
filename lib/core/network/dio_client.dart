import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_demo/core/constants/index.dart';

class DioClient {
  final dio = _createDio();

  static final _baseOptions = BaseOptions(
    baseUrl: AppConstants.baseUrl,
    receiveTimeout: const Duration(seconds: 10),
    connectTimeout: const Duration(seconds: 10),
    sendTimeout: const Duration(seconds: 10),
  );

  DioClient.init();

  static final _singleton = DioClient.init();

  factory DioClient() => _singleton;

  static Dio _createDio() {
    Dio dio = Dio(_baseOptions);

    dio.interceptors.addAll({
      PrettyDioLogger(requestBody: false, responseBody: false),
    });
    return dio;
  }
}
