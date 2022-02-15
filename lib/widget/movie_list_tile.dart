import 'package:cinema_pool/model/trending_movie_shows.dart';
import 'package:cinema_pool/styles/text_style.dart';
import 'package:cinema_pool/widget/movie_tile.dart';
import 'package:flutter/material.dart';

class MovieListTile extends StatelessWidget {
  final String title;
  final List<TrendingMovieShows> movies;
  const MovieListTile({Key? key, required this.movies, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.25,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(title, style: ts20ptMontserratMEDIUM,),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_rounded, ))
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15.00).copyWith(bottom: 15.00),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MovieTile(movie: movies[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
