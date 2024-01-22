import 'dart:convert';

import 'package:movies_app/popular_movies_response/popular_movies_response_item.dart';

class MovieListResponse {
  int? page;
  List<MovieItemResponse>? results;
  int? totalPages;
  int? totalResults;

  MovieListResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MovieListResponse.fromMap(Map<String, dynamic> data) =>
      MovieListResponse(
        page: data['page'] as int?,
        results: (data['results'] as List<dynamic>?)
            ?.map((e) => MovieItemResponse.fromMap(e as Map<String, dynamic>))
            .toList(),
        totalPages: data['total_pages'] as int?,
        totalResults: data['total_results'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'page': page,
        'results': results?.map((e) => e.toMap()).toList(),
        'total_pages': totalPages,
        'total_results': totalResults,
      };

  factory MovieListResponse.fromJson(String data) {
    return MovieListResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(toMap());
}
