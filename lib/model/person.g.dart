// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    json['name'] == null
        ? null
        : NameModel.fromJson(json['name'] as Map<String, dynamic>),
    json['phone'] as String,
    json['imageUrl'] == null
        ? null
        : PictureModel.fromJson(json['imageUrl'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'imageUrl': instance.imageUrl,
    };
