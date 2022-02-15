import 'package:chopper/chopper.dart';
import 'package:cinema_pool/model/celebrity_person.dart';
import 'package:cinema_pool/model/genres.dart';
import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:cinema_pool/network/genres_service.dart';
import 'package:cinema_pool/network/model_response.dart';
import 'package:cinema_pool/network/tmdb_service.dart';
import 'package:cinema_pool/repository/home_repository.dart';
import 'package:logging/logging.dart';

class HomeService extends HomeRepository {
  final TMDBService tmdbService;
  final GenresService genresService;
  late Logger _logger;

  HomeService(this.tmdbService, this.genresService) {
    _logger = Logger.root;
  }

  @override
  Future<List<TrendingMovieShows>> getTrendingMovies() async {
    Response<Result<List<TrendingMovieShows>>> response = await tmdbService.getTrendingMovies();
    if (response.isSuccessful) {
      final Result<List<TrendingMovieShows>>? result = response.body;
      if (result is Success) {
        return (result as Success).value;
      } else if (result is Error) {
        _logger.warning((result as Error).exception);
        return [];
      } else {
        _logger.warning("NULL");
        return [];
      }
    } else {
      _logger.warning(response.error);
      return [];
    }
  }

  @override
  Future<List<TrendingMovieShows>> getTrendingTVShows() async {
    Response<Result<List<TrendingMovieShows>>> response = await tmdbService.getTrendingTVShows();
    if (response.isSuccessful) {
      final Result<List<TrendingMovieShows>>? result = response.body;
      if (result is Success) {
        return (result as Success).value;
      } else if (result is Error) {
        _logger.warning((result as Error).exception);
        return [];
      } else {
        _logger.warning("NULL");
        return [];
      }
    } else {
      _logger.warning(response.error);
      return [];
    }
  }

  @override
  Future<List<CelebrityPerson>> getTrendingCelebrity() async {
    Response<Result<List<CelebrityPerson>>> response = await tmdbService.getTrendingCelebrity();
    if (response.isSuccessful) {
      final Result<List<CelebrityPerson>>? result = response.body;
      if (result is Success) {
        return (result as Success).value;
      } else if (result is Error) {
        _logger.warning((result as Error).exception);
        return [];
      } else {
        _logger.warning("NULL");
        return [];
      }
    } else {
      _logger.warning(response.error);
      return [];
    }
  }

  @override
  Future<List<TrendingMovieShows>> getUpcomingMovies() async {
    Response<Result<List<TrendingMovieShows>>> response = await tmdbService.getUpcomingMovies();
    if (response.isSuccessful) {
      final Result<List<TrendingMovieShows>>? result = response.body;
      if (result is Success) {
        return (result as Success).value;
      } else if (result is Error) {
        _logger.warning((result as Error).exception);
        return [];
      } else {
        _logger.warning("NULL");
        return [];
      }
    } else {
      _logger.warning(response.error);
      return [];
    }
  }

  @override
  Future<List<Genres>> getGenres() async {
    Response<Result<List<Genres>>> response = await genresService.getGenres();
    if (response.isSuccessful) {
      final Result<List<Genres>>? result = response.body;
      if (result is Success) {
        return (result as Success).value;
      } else if (result is Error) {
        _logger.warning((result as Error).exception);
        return [];
      } else {
        _logger.warning("NULL");
        return [];
      }
    } else {
      _logger.warning(response.error);
      return [];
    }
  }
}
