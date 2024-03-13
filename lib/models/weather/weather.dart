

import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable()
class Weather{
  final String main;
  final String icon;
Weather(this.main, this.icon);

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}