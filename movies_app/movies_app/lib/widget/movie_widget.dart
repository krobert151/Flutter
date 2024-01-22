import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/popular_movies_response/popular_movies_response.dart';
import 'package:movies_app/widget/movie_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

Future<MovieListResponse> fetchMovie() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=6378dffd686235eb901105c6c1dd8398'));
  if (response.statusCode == 200) {
    final toReturn = MovieListResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class MovieWidget extends StatefulWidget {
  const MovieWidget({super.key});

  @override
  State<MovieWidget> createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  late Future<MovieListResponse> movieResponse;

  @override
  void initState() {
    super.initState();
    movieResponse = fetchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder<MovieListResponse>(
        future: movieResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Skeletonizer(
              enabled: false,
              child: ListView.builder(
                itemCount: snapshot.data!.results!.length,
                itemBuilder: (context, index) {
                  return MovieItem(movie: snapshot.data!.results![index]);
                },
              ),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
