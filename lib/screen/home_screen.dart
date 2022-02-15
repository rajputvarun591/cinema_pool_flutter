import 'dart:collection';

import 'package:chopper/chopper.dart';
import 'package:cinema_pool/constants/constants.dart';
import 'package:cinema_pool/controller/home_controller.dart';
import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:cinema_pool/network/model_response.dart';
import 'package:cinema_pool/network/tmdb_service.dart';
import 'package:cinema_pool/widget/carousel_list_tile.dart';
import 'package:cinema_pool/widget/category_chips_tile.dart';
import 'package:cinema_pool/widget/celebrity_list_tile.dart';
import 'package:cinema_pool/widget/movie_list_tile.dart';
import 'package:cinema_pool/widget/movie_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static MaterialPage page() {
    return const MaterialPage(
      key: ValueKey(rpHomeScreen),
      name: rpHomeScreen,
      child: HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cinema Pool"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, theme.primaryColorLight.withOpacity(0.1), Colors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.2, 0.5, 0.9],
            ),
          ),
          child: Consumer<HomeController>(
            builder: (context, homeController, child) {
              if (homeController.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                var movies = homeController.trendingMovies;
                var tvShows = homeController.trendingTVShows;
                var upcoming = homeController.upcomingMovies;
                var celebrities = homeController.trendingCelebrity;
                var genres = homeController.genres;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CarouselListTile(movies: upcoming),
                      CategoryChipsTile(title: "Genres", genres: genres),
                      MovieListTile(movies: movies, title: "Weekly Trending Movies"),
                      MovieListTile(movies: tvShows, title: "Weekly Trending Shows"),
                      CelebrityListTile(celebrities: celebrities, title: "Weekly Top Celebrities"),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
