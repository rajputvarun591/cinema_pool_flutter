import 'package:cinema_pool/model/celebrity_person.dart';
import 'package:cinema_pool/model/genres.dart';
import 'package:cinema_pool/model/trending_movie_shows.dart';

abstract class HomeRepository {
  /// Method Definition For get all trending movies List
  Future<List<TrendingMovieShows>> getTrendingMovies();

  /// Method Definition For get all trending TV Shows List
  Future<List<TrendingMovieShows>> getTrendingTVShows();

  /// Method Definition For get all trending TV Shows List
  Future<List<TrendingMovieShows>> getUpcomingMovies();

  /// Method Definition For get all trending Celebrity List
  Future<List<CelebrityPerson>> getTrendingCelebrity();

  /// Method Definition For get all Genres List For Movies
  Future<List<Genres>> getGenres();
}