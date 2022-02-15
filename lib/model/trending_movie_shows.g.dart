// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_movie_shows.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingMovieShows _$TrendingMovieShowsFromJson(Map<String, dynamic> json) =>
    TrendingMovieShows()
      ..adult = json['adult'] as bool?
      ..backdropPath = json['backdrop_path'] as String?
      ..genreIds = (json['genre_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList()
      ..voteCount = (json['vote_count'] as num?)?.toDouble()
      ..originalLanguage = json['original_language'] as String?
      ..originalTitle = json['original_title'] as String?
      ..id = (json['id'] as num?)?.toDouble()
      ..title = json['title'] as String?
      ..video = json['video'] as bool?
      ..voteAverage = (json['vote_average'] as num?)?.toDouble()
      ..posterPath = json['poster_path'] as String?
      ..overview = json['overview'] as String?
      ..releaseDate = json['release_date'] as String?
      ..popularity = (json['popularity'] as num?)?.toDouble()
      ..mediaType = json['media_type'] as String?;

Map<String, dynamic> _$TrendingMovieShowsToJson(TrendingMovieShows instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'vote_count': instance.voteCount,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'id': instance.id,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'popularity': instance.popularity,
      'media_type': instance.mediaType,
    };
