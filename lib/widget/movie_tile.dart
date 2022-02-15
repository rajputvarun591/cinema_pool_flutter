import 'package:cinema_pool/constants/constants.dart';
import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final TrendingMovieShows movie;
  const MovieTile({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    final String image = imagesBasePath + movie.posterPath!;
    return AspectRatio(
      aspectRatio: 0.78,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.00),
        ),
        padding: const EdgeInsets.all(5.00),
        child: Material(
          color: Colors.grey.shade300,
          elevation: 5.00,
          borderRadius: BorderRadius.circular(8.00),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.00),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
