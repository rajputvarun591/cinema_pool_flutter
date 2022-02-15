// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'celebrity_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CelebrityPerson _$CelebrityPersonFromJson(Map<String, dynamic> json) =>
    CelebrityPerson()
      ..adult = json['adult'] as bool?
      ..gender = json['gender'] as int?
      ..name = json['name'] as String?
      ..id = json['id'] as int?
      ..knownFor = (json['known_for'] as List<dynamic>?)
          ?.map((e) => TrendingMovieShows.fromJson(e as Map<String, dynamic>))
          .toList()
      ..knownForDepartment = json['known_for_department'] as String?
      ..profilePath = json['profile_path'] as String?
      ..popularity = (json['popularity'] as num?)?.toDouble()
      ..mediaType = json['media_type'] as String?;

Map<String, dynamic> _$CelebrityPersonToJson(CelebrityPerson instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'name': instance.name,
      'id': instance.id,
      'known_for': instance.knownFor,
      'known_for_department': instance.knownForDepartment,
      'profile_path': instance.profilePath,
      'popularity': instance.popularity,
      'media_type': instance.mediaType,
    };
