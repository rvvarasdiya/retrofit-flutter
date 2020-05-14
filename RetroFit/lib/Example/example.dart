import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'dart:io';

import 'package:retro/Model/Model.dart';

part 'package:retro/Example/example.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/albums/1")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/posts")
  Future<List<Retro_Datamodel>> getTasks();

}
