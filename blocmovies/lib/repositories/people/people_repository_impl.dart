import 'dart:convert';

import 'package:blocmovies/models/poeple_popular_response/poeple_popular_response.dart';
import 'package:blocmovies/repositories/people/people_repository.dart';
import 'package:http/http.dart';

class PoepleRepositoryImplementation extends PoepleRepository {
  final Client _httpClient = Client();

  @override
  Future<List<People>> fetchPopularPeople() async {
    final response = await _httpClient.get(Uri.parse(
        'https://api.themoviedb.org/3/person/popular?api_key=3df12f984d2c472fef7e920ed250aaba'));

    if (response.statusCode == 200) {
      return PeoplePopularResponse.fromJson(json.decode(response.body))
          .results!;
    } else {
      throw Exception('No carga Joe');
    }
  }
}
