import 'package:chopper/chopper.dart';
import 'package:cinema_pool/constants/constants.dart';
import 'package:cinema_pool/model/genres.dart';

import 'common_request_interceptor.dart';
import 'genre_converter.dart';
import 'model_response.dart';

part 'genres_service.chopper.dart';


@ChopperApi()
abstract class GenresService extends ChopperService {

  static GenresService create() {
    final ChopperClient client = ChopperClient(
      baseUrl: basePath,
      interceptors: [CommonRequestInterceptor(), HttpLoggingInterceptor()],
      converter: GenreConverter(),
      errorConverter: const JsonConverter(),
      services: [_$GenresService()],
    );

    return _$GenresService(client);
  }

  /// We are defining this method for fetch all Genres Available on TMDB for Movies
  @Get(path: genrePath)
  Future<Response<Result<List<Genres>>>> getGenres();
}
