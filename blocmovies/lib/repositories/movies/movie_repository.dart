import 'package:blocmovies/models/movie_popular_response/movie_popular_response.dart';

abstract class MovieRepository {
  Future<List<Movie>> fetchMovies(String type);
  Future<Movie> fetchMovieDetail(int id);
}
