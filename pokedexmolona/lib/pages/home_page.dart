import 'package:flutter/material.dart';
import 'package:pokedexmolona/widgets/pokemon_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 400,
        child: PokemonWidg(
          number: 3,
        ),
      ),
    );
  }
}
