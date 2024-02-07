import 'package:blocmovies/bloc/movies/movies_bloc.dart';
import 'package:blocmovies/repositories/movies/movie_repository.dart';
import 'package:blocmovies/repositories/movies/movie_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  late MovieRepository movieRepository;

  @override
  void initState() {
    super.initState();
    movieRepository = MovieRepositoryImplementation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MoviesBloc(movieRepository)..add(MovieFetchList('popular')),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movies'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.filter))],
        ),
        body: _movieList(),
      ),
    );
  }

  Widget _movieList() {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (BuildContext context, MoviesState state) {
        if (state is MoviesFetchSuccess) {
          return ListView.builder(
              itemCount: state.movieList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.movieList[index].title!),
                );
              });
        } else if (state is MoviesFetchError) {
          return Text(state.errorMsg);
        }
        return Text('Manolo');
      },
    );
  }
}
