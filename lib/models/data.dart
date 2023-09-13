import 'package:json_annotation/json_annotation.dart';
import 'language.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  Data({required this.languages});
  List<Language> languages;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
