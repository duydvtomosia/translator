import 'package:dio/dio.dart';
import 'package:translator_app/models/data.dart';

class DioClient {
  final _dio = Dio(BaseOptions(
    baseUrl: 'https://translation.googleapis.com/language/translate/v2',
    connectTimeout: const Duration(seconds: 5000),
    receiveTimeout: const Duration(seconds: 3000),
  ));

  Future<Data> getSupportLanguages() async {
    Response data = await _dio.post('/languages');

    Data responseData = Data.fromJson(data.data);

    return responseData;
  }
}
