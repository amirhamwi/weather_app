

import 'package:json_annotation/json_annotation.dart';
part 'wind_model.g.dart';

@JsonSerializable()
class WindModel{
  final double speed;
WindModel( this.speed);

  factory WindModel.fromJson(Map<String, dynamic> json) => _$WindModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$WindModelToJson(this);
}