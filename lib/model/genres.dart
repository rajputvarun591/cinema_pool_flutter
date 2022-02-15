import 'package:json_annotation/json_annotation.dart';
part 'genres.g.dart';

@JsonSerializable()
class Genres {
  double? id;
  String? name;

  Genres();

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);

  Map<String, dynamic> toJson() => _$GenresToJson(this);
}