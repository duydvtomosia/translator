// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslationData _$TranslationDataFromJson(Map<String, dynamic> json) =>
    TranslationData(
      translations: (json['translations'] as List<dynamic>)
          .map((e) => Translation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TranslationDataToJson(TranslationData instance) =>
    <String, dynamic>{
      'translations': instance.translations,
    };

Translation _$TranslationFromJson(Map<String, dynamic> json) => Translation(
      translatedText: json['translatedText'] as String,
    );

Map<String, dynamic> _$TranslationToJson(Translation instance) =>
    <String, dynamic>{
      'translatedText': instance.translatedText,
    };
