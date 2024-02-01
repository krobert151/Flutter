import 'dart:convert';

import 'result.dart';

class FuentesDeAguaResponse {
  int? totalCount;
  List<Result>? results;

  FuentesDeAguaResponse({this.totalCount, this.results});

  factory FuentesDeAguaResponse.fromMap(Map<String, dynamic> data) {
    return FuentesDeAguaResponse(
      totalCount: data['total_count'] as int?,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'total_count': totalCount,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FuentesDeAguaResponse].
  factory FuentesDeAguaResponse.fromJson(String data) {
    return FuentesDeAguaResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FuentesDeAguaResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
