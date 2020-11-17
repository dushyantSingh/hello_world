import 'package:json_annotation/json_annotation.dart';

part 'name_model.g.dart';

@JsonSerializable()
class NameModel {
  String title;
  String first;
  String last;
  NameModel(this.title, this.first, this.last);

  factory NameModel.fromJson(Map<String, dynamic> json) =>
      _$NameModelFromJson(json);
  Map<String, dynamic> toJson() => _$NameModelToJson(this);
}
