
import 'package:json_annotation/json_annotation.dart';

part 'trending_movie_shows.g.dart';

@JsonSerializable()
class TrendingMovieShows {
  bool? adult;
  @JsonKey(name: "backdrop_path")
  String? backdropPath;
  @JsonKey(name: "genre_ids")
  List<double>? genreIds;
  @JsonKey(name: "vote_count")
  double? voteCount;
  @JsonKey(name: "original_language")
  String? originalLanguage;
  @JsonKey(name: "original_title")
  String? originalTitle;
  double? id;
  String? title;
  bool? video;
  @JsonKey(name: "vote_average")
  double? voteAverage;
  @JsonKey(name: "poster_path")
  String? posterPath;
  String? overview;
  @JsonKey(name: "release_date")
  String? releaseDate;
  double? popularity;
  @JsonKey(name: "media_type")
  String? mediaType;

  TrendingMovieShows();
  
  factory TrendingMovieShows.fromJson(Map<String, dynamic> json) => _$TrendingMovieShowsFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingMovieShowsToJson(this);

  @override
  String toString() {
    return 'TrendingMovie{adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, voteCount: $voteCount, originalLanguage: $originalLanguage, originalTitle: $originalTitle, id: $id, title: $title, video: $video, voteAverage: $voteAverage, posterPath: $posterPath, overview: $overview, releaseDate: $releaseDate, popularity: $popularity, mediaType: $mediaType}';
  }
}