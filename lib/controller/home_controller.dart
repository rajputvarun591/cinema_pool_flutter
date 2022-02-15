import 'package:cinema_pool/mock_service/home_service.dart';
import 'package:cinema_pool/model/celebrity_person.dart';
import 'package:cinema_pool/model/genres.dart';
import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:cinema_pool/network/genres_service.dart';
import 'package:cinema_pool/network/tmdb_service.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  final HomeService _homeService = HomeService(TMDBService.create(), GenresService.create());
  bool isLoading = true;

  List<TrendingMovieShows> trendingMovies = [];
  List<TrendingMovieShows> trendingTVShows = [];
  List<TrendingMovieShows> upcomingMovies = [];
  List<CelebrityPerson> trendingCelebrity = [];
  List<Genres> genres = [];

  void getTrendingMovies() async {
    trendingMovies = await _homeService.getTrendingMovies();
    trendingTVShows = await _homeService.getTrendingTVShows();
    trendingCelebrity = await _homeService.getTrendingCelebrity();
    upcomingMovies = await _homeService.getUpcomingMovies();
    genres = await _homeService.getGenres();
    isLoading = false;
    notifyListeners();
  }

}