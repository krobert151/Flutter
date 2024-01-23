import 'package:flutter/material.dart';
import 'package:movies_app/movie_details_response/movie_details_response/movie_details_response.dart';

class MovieDetailsInfo extends StatelessWidget {
  final MovieDetailsResponse movie;
  const MovieDetailsInfo({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: NetworkImage(
                  'https://image.tmdb.org/t/p/w500/${movie.backdropPath}'))),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(88, 0, 0, 0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 150,
              child: Image(
                  image: NetworkImage(
                      'https://image.tmdb.org/t/p/w500/${movie.posterPath}')),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Popularity = ${movie.popularity}',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Language = ${movie.originalLanguage}',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Duration movie = ${movie.runtime}',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
