part of 'pokemon_bloc.dart';

@immutable
sealed class PokemonState {}

final class PokemonInitial extends PokemonState {}

final class PokemonLoad extends PokemonState {}

final class PokemonFetch extends PokemonState {}
