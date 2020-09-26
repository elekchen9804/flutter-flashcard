import 'package:json_annotation/json_annotation.dart';

part 'cardSetModel.g.dart';

@JsonSerializable()
class CardSetModel {
    CardSetModel();

    num id;
    String title;
    num itemAmount;
    
    factory CardSetModel.fromJson(Map<String,dynamic> json) => _$CardSetModelFromJson(json);
    Map<String, dynamic> toJson() => _$CardSetModelToJson(this);
}
