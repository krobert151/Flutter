part of 'movies_bloc.dart';

@immutable
sealed class MoviesState {}

final class MoviesInitial extends MoviesState {}

final class MoviesFetchLoading extends MoviesState {}

final class MoviesFetchSuccess extends MoviesState {
  final List<Movie> movieList;

  MoviesFetchSuccess(this.movieList);
}

final class MoviesFetchError extends MoviesState {
  final String errorMsg;
  MoviesFetchError(this.errorMsg);
}
