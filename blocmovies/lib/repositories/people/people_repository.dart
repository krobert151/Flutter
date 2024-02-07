import 'package:blocmovies/models/poeple_popular_response/poeple_popular_response.dart';

abstract class PoepleRepository {
  Future<List<People>> fetchPopularPeople();
}
