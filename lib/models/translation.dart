import 'package:json_annotation/json_annotation.dart';

part 'translation.g.dart';

@JsonSerializable()
class TranslationData {
  TranslationData({required this.translations});

  final List<Translation> translations;

  factory TranslationData.fromJson(Map<String, dynamic> json) =>
      _$TranslationDataFromJson(json);
}

@JsonSerializable()
class Translation {
  Translation({required this.translatedText});

  final String translatedText;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}
