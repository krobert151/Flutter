import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:movies_app/movie_details_response/movie_details_response/movie_details_response.dart';
import 'package:movies_app/widget/movie_details_info.dart';

Future<MovieDetailsResponse> fetchMovie(int number) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$number?api_key=6378dffd686235eb901105c6c1dd8398'));
  if (response.statusCode == 200) {
    final toReturn = MovieDetailsResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({super.key, required this.num});
  final int num;

  @override
  State<MovieDetailsScreen> createState() =>
      _MovieDetailsScreenState(number: num);
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  final int number;
  late Future<MovieDetailsResponse> movie_details_response;

  _MovieDetailsScreenState({required this.number});

  @override
  void initState() {
    super.initState();
    movie_details_response = fetchMovie(number);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: movie_details_response,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.data!.title.toString()),
            ),
            body: MovieDetailsInfo(
              movie: snapshot.requireData,
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
