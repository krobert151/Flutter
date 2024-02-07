import 'dart:convert';

import 'package:blocmovies/models/movie_popular_response/movie_popular_response.dart';
import 'package:blocmovies/repositories/movies/movie_repository.dart';
import 'package:http/http.dart';

class MovieRepositoryImplementation extends MovieRepository {
  final Client _httpClient = Client();

  @override
  Future<List<Movie>> fetchMovies(String type) async {
    final response = await _httpClient.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$type?api_key=3df12f984d2c472fef7e920ed250aaba'));

    if (response.statusCode == 200) {
      return MoviePopularResponse.fromJson(json.decode(response.body)).results!;
    } else {
      throw Exception('No carga Joe');
    }
  }

  @override
  Future<Movie> fetchMovieDetail(int id) {
    // TODO: implement fetchMovieDetail
    throw UnimplementedError();
  }
}
