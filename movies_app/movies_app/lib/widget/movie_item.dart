import 'package:flutter/material.dart';
import 'package:movies_app/popular_movies_response/popular_movies_response_item.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.movie});
  final MovieItemResponse movie;
  @override
  Widget build(BuildContext context) {
    return Text(movie.title.toString());
  }
}
