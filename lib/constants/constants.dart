
import 'package:flutter/material.dart';

/// Defining Routes Fro screens
/// Home Screen Route Path Name
const String rpHomeScreen = "/";



/// This is the base URL we will use in wide application
const String basePath = "https://api.themoviedb.org/3";

/// The Movie Database API key
const String apiKey = "978eec01765e57ca76a06d2042e53b25";

/// Path for fetch trending movies List
const String trendingMoviesPath = "trending/movie/week";

/// Path for fetch trending TV Shows List
const String trendingTVShowsPath = "trending/tv/week";

/// Path for fetch trending Persons List
const String trendingPersonPath = "trending/person/week";

/// Path for get Images provide by TMDB API
const String imagesBasePath = "https://image.tmdb.org/t/p/w500";

/// Path for Get upcoming Movies list
const String upcomingMoviesPath = "movie/upcoming";


/// Path for get all available genres of the movies so that we can fetch movies by the genres.
const String genrePath = 'genre/movie/list';



const shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFEBEBF4),
    Color(0xFFF4F4F4),
    Color(0xFFEBEBF4),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);