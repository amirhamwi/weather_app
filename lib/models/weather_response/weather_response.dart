import 'package:json_annotation/json_annotation.dart';

import '../city_model/city_model.dart';
import '../weather_element/weather_element.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  final CityModel city;
  final List<WeatherElement> list;
  WeatherResponse(this.city, this.list);

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}
