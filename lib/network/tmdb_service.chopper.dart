// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TMDBService extends TMDBService {
  _$TMDBService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TMDBService;

  @override
  Future<Response<Result<List<TrendingMovieShows>>>> getTrendingMovies() {
    final $url = 'trending/movie/week';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<Result<List<TrendingMovieShows>>, TrendingMovieShows>($request);
  }

  @override
  Future<Response<Result<List<TrendingMovieShows>>>> getTrendingTVShows() {
    final $url = 'trending/tv/week';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<Result<List<TrendingMovieShows>>, TrendingMovieShows>($request);
  }

  @override
  Future<Response<Result<List<CelebrityPerson>>>> getTrendingCelebrity() {
    final $url = 'trending/person/week';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<Result<List<CelebrityPerson>>, CelebrityPerson>($request);
  }

  @override
  Future<Response<Result<List<TrendingMovieShows>>>> getUpcomingMovies() {
    final $url = 'movie/upcoming';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<Result<List<TrendingMovieShows>>, TrendingMovieShows>($request);
  }
}
