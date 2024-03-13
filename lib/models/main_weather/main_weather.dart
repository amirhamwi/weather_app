

import 'package:json_annotation/json_annotation.dart';
part 'main_weather.g.dart';

@JsonSerializable()
class MainWeather{
  final double temp;
  @JsonKey(name: "temp_min")
  final double tempMin;
  @JsonKey(name: "temp_max")

  final double tempMax;
  @JsonKey(name: "feels_like")
  final double feelsLike;
  final double humidity;
MainWeather(this.temp, this.tempMin, this.tempMax, this.feelsLike, this.humidity);

  factory MainWeather.fromJson(Map<String, dynamic> json) => _$MainWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$MainWeatherToJson(this);
}