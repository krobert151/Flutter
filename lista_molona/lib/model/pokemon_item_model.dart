import 'dart:convert';

import 'package:collection/collection.dart';

class PokemonItemModel {
  String? name;
  String? url;

  PokemonItemModel({this.name, this.url});

  factory PokemonItemModel.fromMap(Map<String, dynamic> data) =>
      PokemonItemModel(
        name: data['name'] as String?,
        url: data['url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'url': url,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PokemonItemModel].
  factory PokemonItemModel.fromJson(String data) {
    return PokemonItemModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PokemonItemModel] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PokemonItemModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}
