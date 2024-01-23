import 'dart:convert';

class KnownFor {
  String? name;

  KnownFor({this.name});

  factory KnownFor.fromMap(Map<String, dynamic> data) => KnownFor(
        name: data['name'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [KnowFor].
  factory KnownFor.fromJson(String data) {
    return KnownFor.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [KnownFor] to a JSON string.
  String toJson() => json.encode(toMap());
}
