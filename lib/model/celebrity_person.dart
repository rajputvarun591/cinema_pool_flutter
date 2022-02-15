import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:json_annotation/json_annotation.dart';

part 'celebrity_person.g.dart';

@JsonSerializable()
class CelebrityPerson {
  bool? adult;
  int? gender;
  String? name;
  int? id;
  @JsonKey(name: "known_for")
  List<TrendingMovieShows>? knownFor;
  @JsonKey(name: "known_for_department")
  String? knownForDepartment;
  @JsonKey(name: "profile_path")
  String? profilePath;
  double? popularity;
  @JsonKey(name: "media_type")
  String? mediaType;

  CelebrityPerson();

  factory CelebrityPerson.fromJson(Map<String, dynamic> json) => _$CelebrityPersonFromJson(json);

  Map<String, dynamic> toJson() => _$CelebrityPersonToJson(this);
}
