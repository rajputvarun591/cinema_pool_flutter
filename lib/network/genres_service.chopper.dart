// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GenresService extends GenresService {
  _$GenresService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GenresService;

  @override
  Future<Response<Result<List<Genres>>>> getGenres() {
    final $url = 'genre/movie/list';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Result<List<Genres>>, Genres>($request);
  }
}
