import 'dart:ui';

import 'package:cinema_pool/constants/constants.dart';
import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:cinema_pool/styles/text_style.dart';
import 'package:flutter/material.dart';

class CarouselTile extends StatelessWidget {
  final TrendingMovieShows movie;
  const CarouselTile({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    final String image = imagesBasePath + movie.backdropPath!;
    return Container(
      margin: const EdgeInsets.only(bottom: 10.00, left: 5.00, right: 5.00),
      child: Material(
        elevation: 5.00,
        borderRadius: BorderRadius.circular(8.00),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.00),
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.00),
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.00),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title!,
                    style: ts20ptMontserratREGULAR.copyWith(fontSize: 16.00, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      movie.overview!,
                      style: ts20ptMontserratREGULAR.copyWith(fontSize: 13.00, color: Colors.white.withOpacity(0.8)),
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
