import 'dart:convert';

import 'package:collection/collection.dart';

import 'pokemon_item_model.dart';

class PokemonSimpleListModel {
  int? count;
  String? next;
  dynamic previous;
  List<PokemonItemModel>? results;

  PokemonSimpleListModel({this.count, this.next, this.previous, this.results});

  factory PokemonSimpleListModel.fromMap(Map<String, dynamic> data) {
    return PokemonSimpleListModel(
      count: data['count'] as int?,
      next: data['next'] as String?,
      previous: data['previous'] as dynamic,
      results: (data['results'] as List<dynamic>?)
          ?.map((e) => PokemonItemModel.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'count': count,
        'next': next,
        'previous': previous,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PokemonSimpleListModel].
  factory PokemonSimpleListModel.fromJson(String data) {
    return PokemonSimpleListModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PokemonSimpleListModel] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PokemonSimpleListModel) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toMap(), toMap());
  }

  @override
  int get hashCode =>
      count.hashCode ^ next.hashCode ^ previous.hashCode ^ results.hashCode;
}
