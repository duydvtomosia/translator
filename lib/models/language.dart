import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';

@JsonSerializable()
class LanguagesData {
  LanguagesData({required this.languages});
  List<Language> languages;

  factory LanguagesData.fromJson(Map<String, dynamic> json) =>
      _$LanguagesDataFromJson(json);

  Map<String, dynamic> toJson() => _$LanguagesDataToJson(this);
}

@JsonSerializable()
class Language {
  Language({
    required this.language,
    required this.name,
  });

  String language;
  String name;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}
