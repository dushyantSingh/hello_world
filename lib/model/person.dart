import 'picture_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'name_model.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  NameModel name;
  String phone;
  PictureModel imageUrl;

  Person(this.name, this.phone, this.imageUrl);
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
