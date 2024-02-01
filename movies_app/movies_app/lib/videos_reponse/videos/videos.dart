import 'dart:convert';

import 'result.dart';

class ListVideosResponse {
  int? id;
  List<Video>? results;

  ListVideosResponse({this.id, this.results});

  factory ListVideosResponse.fromMap(Map<String, dynamic> data) =>
      ListVideosResponse(
        id: data['id'] as int?,
        results: (data['results'] as List<dynamic>?)
            ?.map((e) => Video.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ListVideosResponse].
  factory ListVideosResponse.fromJson(String data) {
    return ListVideosResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ListVideosResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
