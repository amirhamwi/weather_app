import 'package:json_annotation/json_annotation.dart';

import '../main_weather/main_weather.dart';
import '../weather/weather.dart';
import '../wind_model/wind_model.dart';
part 'weather_element.g.dart';

@JsonSerializable()
class WeatherElement {
  final int dt;
  @JsonKey(name: 'dt_txt')
  final String dtText;
  final WindModel wind;
  final List<Weather> weather;
  @JsonKey(name: 'main')
  final MainWeather mainWeather;
  WeatherElement(
      this.dt, this.dtText, this.wind, this.weather, this.mainWeather);

  factory WeatherElement.fromJson(Map<String, dynamic> json) =>
      _$WeatherElementFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherElementToJson(this);
}
