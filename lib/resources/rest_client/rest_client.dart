import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/weather_response/weather_response.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {required String baseUrl}) = _RestClient;

  @GET('forecast')
  Future<WeatherResponse> getForcast(
      {@Query('lat') double lat = 33.5138,
      @Query('lon') double lon = 36.2765,
      @Query('appid') String apiKey = "ac936d4220badb789b8aa9079823bbb4"});
}
