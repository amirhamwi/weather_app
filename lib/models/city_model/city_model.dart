

import 'package:json_annotation/json_annotation.dart';
part 'city_model.g.dart';

@JsonSerializable()
class CityModel{
  final String name;
  final String country;
CityModel(this.name, this.country);

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CityModelToJson(this);
}