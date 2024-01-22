import 'package:pokedexmolona/pokemon/subtype.dart';

class Type {
  int? slot;
  SubType? type;

  Type({this.slot, this.type});

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json['slot'] as int?,
        type: json['type'] == null
            ? null
            : SubType.fromJson(json['type'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'slot': slot,
        'type': type?.toJson(),
      };
}
