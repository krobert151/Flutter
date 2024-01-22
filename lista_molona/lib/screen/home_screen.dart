import 'package:flutter/material.dart';
import 'package:lista_molona/widget/pokemon_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PokemonList(),
    );
  }
}
