// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainWeather _$MainWeatherFromJson(Map<String, dynamic> json) => MainWeather(
      (json['temp'] as num).toDouble(),
      (json['temp_min'] as num).toDouble(),
      (json['temp_max'] as num).toDouble(),
      (json['feels_like'] as num).toDouble(),
      (json['humidity'] as num).toDouble(),
    );

Map<String, dynamic> _$MainWeatherToJson(MainWeather instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'feels_like': instance.feelsLike,
      'humidity': instance.humidity,
    };
