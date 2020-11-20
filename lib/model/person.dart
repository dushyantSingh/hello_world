import 'package:json_annotation/json_annotation.dart';

import 'name_model.dart';
import 'picture_model.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  Person(this.name, this.phone, this.imageUrl);
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
  NameModel name;
  String phone;
  PictureModel imageUrl;
}
