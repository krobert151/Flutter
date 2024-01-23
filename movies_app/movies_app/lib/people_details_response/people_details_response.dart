import 'dart:convert';

import 'package:movies_app/popular_people_response/known_for.dart';

class PeopleDetailsResponse {
  bool? adult;
  List<KnownFor>? alsoKnownAs;
  String? biography;
  String? birthday;
  String? deathday;
  int? gender;
  String? homepage;
  int? id;
  String? imdbId;
  String? knownForDepartment;
  String? name;
  String? placeOfBirth;
  double? popularity;
  String? profilePath;

  PeopleDetailsResponse({
    this.adult,
    this.alsoKnownAs,
    this.biography,
    this.birthday,
    this.deathday,
    this.gender,
    this.homepage,
    this.id,
    this.imdbId,
    this.knownForDepartment,
    this.name,
    this.placeOfBirth,
    this.popularity,
    this.profilePath,
  });

  factory PeopleDetailsResponse.fromMap(Map<String, dynamic> data) {
    return PeopleDetailsResponse(
      adult: data['adult'] as bool?,
      alsoKnownAs: (data['alsoKnownAs'] as List<dynamic>?)
          ?.map((e) => KnownFor.fromMap(e as Map<String, dynamic>))
          .toList(),
      biography: data['biography'] as String?,
      birthday: data['birthday'] as String?,
      deathday: data['deathday'] as String?,
      gender: data['gender'] as int?,
      homepage: data['homepage'] as String?,
      id: data['id'] as int?,
      imdbId: data['imdb_id'] as String?,
      knownForDepartment: data['known_for_department'] as String?,
      name: data['name'] as String?,
      placeOfBirth: data['place_of_birth'] as String?,
      popularity: (data['popularity'] as num?)?.toDouble(),
      profilePath: data['profile_path'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'adult': adult,
        'also_known_as': alsoKnownAs,
        'biography': biography,
        'birthday': birthday,
        'deathday': deathday,
        'gender': gender,
        'homepage': homepage,
        'id': id,
        'imdb_id': imdbId,
        'known_for_department': knownForDepartment,
        'name': name,
        'place_of_birth': placeOfBirth,
        'popularity': popularity,
        'profile_path': profilePath,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [People].
  factory PeopleDetailsResponse.fromJson(String data) {
    return PeopleDetailsResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [People] to a JSON string.
  String toJson() => json.encode(toMap());
}
