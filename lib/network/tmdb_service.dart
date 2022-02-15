import 'package:chopper/chopper.dart';
import 'package:cinema_pool/constants/constants.dart';
import 'package:cinema_pool/model/celebrity_person.dart';
import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:cinema_pool/network/common_request_interceptor.dart';
import 'package:cinema_pool/network/model_converter.dart';

import 'model_response.dart';

part 'tmdb_service.chopper.dart';


@ChopperApi()
abstract class TMDBService extends ChopperService {

  static TMDBService create() {
    final ChopperClient client = ChopperClient(
      baseUrl: basePath,
      interceptors: [CommonRequestInterceptor(), HttpLoggingInterceptor()],
      converter: ModelConverter(),
      errorConverter: const JsonConverter(),
      services: [_$TMDBService()],
    );

    return _$TMDBService(client);
  }

  /// We are defining this method for fetch all trending movies for a week
  @Get(path: trendingMoviesPath)
  Future<Response<Result<List<TrendingMovieShows>>>> getTrendingMovies();

  /// We are defining this method for fetch all trending TV Shows for a week
  @Get(path: trendingTVShowsPath)
  Future<Response<Result<List<TrendingMovieShows>>>> getTrendingTVShows();

  /// We are defining this method for fetch all trending Celebrity Person for a week
  @Get(path: trendingPersonPath)
  Future<Response<Result<List<CelebrityPerson>>>> getTrendingCelebrity();

  /// We are defining this method for fetch all Upcoming Movies (Limit 20) for a week
  @Get(path: upcomingMoviesPath)
  Future<Response<Result<List<TrendingMovieShows>>>> getUpcomingMovies();
}
