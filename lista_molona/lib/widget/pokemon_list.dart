import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lista_molona/model/pokemon_list_model.dart';
import 'package:skeletonizer/skeletonizer.dart';

Future<PokemonSimpleListModel> fecthPokemon() async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.s
    return PokemonSimpleListModel.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<PokemonSimpleListModel> pokemonList;

  @override
  void initState() {
    super.initState();
    pokemonList = fecthPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: pokemonList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Skeletonizer(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Card(child: Text(snapshot.data!.count.toString()));
                    }));
          } else if (snapshot.hasError) {
            return const Text('Manolo');
          }
          return const CircularProgressIndicator();
        });
  }
}
