// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherElement _$WeatherElementFromJson(Map<String, dynamic> json) =>
    WeatherElement(
      json['dt'] as int,
      json['dt_txt'] as String,
      WindModel.fromJson(json['wind'] as Map<String, dynamic>),
      (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      MainWeather.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherElementToJson(WeatherElement instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'dt_txt': instance.dtText,
      'wind': instance.wind,
      'weather': instance.weather,
      'main': instance.mainWeather,
    };
