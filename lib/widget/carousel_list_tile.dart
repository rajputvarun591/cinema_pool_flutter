import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:flutter/material.dart';

import 'carousel_tile.dart';

class CarouselListTile extends StatefulWidget {
  final List<TrendingMovieShows> movies;
  const CarouselListTile({Key? key, required this.movies}) : super(key: key);

  @override
  State<CarouselListTile> createState() => _CarouselListTileState();
}

class _CarouselListTileState extends State<CarouselListTile> {

  late CarouselController controller;

  @override
  void initState() {
    super.initState();
    controller = CarouselController();
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.25,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: CarouselSlider.builder(
              itemCount: widget.movies.length,
              itemBuilder: (context, index, index1) {
                return CarouselTile(movie: widget.movies[index]);
              },
              carouselController: controller,
              options: CarouselOptions(
                aspectRatio: 2,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                autoPlayInterval: const Duration(seconds: 5),
                enableInfiniteScroll: true,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
                pauseAutoPlayOnTouch: true,
                viewportFraction: 1,
                initialPage: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
