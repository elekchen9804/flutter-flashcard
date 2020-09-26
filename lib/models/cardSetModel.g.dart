// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardSetModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardSetModel _$CardSetModelFromJson(Map<String, dynamic> json) {
  return CardSetModel()
    ..id = json['id'] as num
    ..title = json['title'] as String
    ..itemAmount = json['itemAmount'] as num;
}

Map<String, dynamic> _$CardSetModelToJson(CardSetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'itemAmount': instance.itemAmount
    };
