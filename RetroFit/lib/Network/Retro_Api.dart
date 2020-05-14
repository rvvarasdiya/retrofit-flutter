import 'package:dio/dio.dart';

class Retro_Api {

  Dio Dio_Data()
   {
    final dio = Dio();
    dio.options.headers["Demo-Header"] = "demo header";   // config your dio headers globally
    dio.options.headers["Content-Type"] = "application/json";
    return dio;
   }
}