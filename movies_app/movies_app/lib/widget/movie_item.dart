import 'package:flutter/material.dart';
import 'package:movies_app/popular_movies_response/popular_movies_response_item.dart';
import 'package:movies_app/screen/movie_detail_screen.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.movie});
  final MovieItemResponse movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieDetailsScreen(
                  num: movie.id!,
                ),
              ));
        },
        child: Column(
          children: [
            Text(movie.title.toString()),
            Image(
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500/${movie.posterPath}')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(movie.releaseDate.toString()),
                Row(
                  children: [
                    Text(movie.voteAverage.toString()),
                    const Icon(Icons.star_border_outlined)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
