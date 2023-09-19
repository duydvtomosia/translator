// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguagesData _$LanguagesDataFromJson(Map<String, dynamic> json) =>
    LanguagesData(
      languages: (json['languages'] as List<dynamic>)
          .map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguagesDataToJson(LanguagesData instance) =>
    <String, dynamic>{
      'languages': instance.languages,
    };

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      language: json['language'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'language': instance.language,
      'name': instance.name,
    };
