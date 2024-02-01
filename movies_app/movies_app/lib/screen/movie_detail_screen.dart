import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:movies_app/movie_details_response/movie_details_response/movie_details_response.dart';
import 'package:movies_app/videos_reponse/videos/videos.dart';
import 'package:movies_app/widget/movie_details_info.dart';
import 'package:movies_app/widget/video_list.dart';
import 'package:url_launcher/url_launcher.dart';

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

Future<http.Response> login() {
  return http.post(
      Uri.parse(
          'https://www.themoviedb.org/authenticate/6378dffd686235eb901105c6c1dd8398?redirect_to=http://www.yourapp.com/approved'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
}

Future<ListVideosResponse> fetchVideo(int number) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$number/videos?api_key=6378dffd686235eb901105c6c1dd8398'));
  if (response.statusCode == 200) {
    final toReturn = ListVideosResponse.fromJson(response.body);
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
  late Future<ListVideosResponse> movie_videos_repsonse;
  final Uri _url = Uri.parse(
      'https://www.themoviedb.org/authenticate/6378dffd686235eb901105c6c1dd8398?redirect_to=http://www.yourapp.com/approved');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  _MovieDetailsScreenState({required this.number});

  @override
  void initState() {
    super.initState();
    movie_details_response = fetchMovie(number);
    movie_videos_repsonse = fetchVideo(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
            future: movie_details_response,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return MovieDetailsInfo(
                  movie: snapshot.requireData,
                );
              }
              return const CircularProgressIndicator();
            },
          ),
          FutureBuilder(
            future: movie_videos_repsonse,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return VideosList(
                  videosResponse: snapshot.requireData,
                );
              }
              return const CircularProgressIndicator();
            },
          ),
          Center(
            child: ElevatedButton(
              onPressed: _launchUrl,
              child: const Text('Show Flutter homepage'),
            ),
          ),
        ],
      ),
    );
  }
}
