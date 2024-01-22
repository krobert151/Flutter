// ignore_for_file: no_logic_in_create_state

import 'dart:convert';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pokedexmolona/pokemon/pokemon.dart';
import 'package:http/http.dart' as http;

Future<Pokemon> fecthPokemon(int num) async {
  final response =
      await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$num'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Pokemon.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class PokemonWidg extends StatefulWidget {
  const PokemonWidg({super.key, required this.number});
  final int number;

  @override
  State<PokemonWidg> createState() => _PokemonWidgState(num: number);
}

class _PokemonWidgState extends State<PokemonWidg> {
  late Future<Pokemon> pokemon;
  final int num;

  _PokemonWidgState({required this.num});

  @override
  void initState() {
    super.initState();
    pokemon = fecthPokemon(num);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: pokemon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return FlipInX(
              animate: true,
              duration: Duration(seconds: 10),
              child: Card(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data!.name!),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Image.network(
                                snapshot.data!.sprites!.frontDefault!),
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Text('Id: ${snapshot.data!.id!}'),
                              Text('Type: negro '),
                              Text('Id: ${snapshot.data!.id!}')
                            ],
                          ))
                    ],
                  )
                ],
              )),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        });
  }
}
