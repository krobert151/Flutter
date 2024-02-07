part of 'people_bloc.dart';

@immutable
sealed class PeopleState {}

final class PeopleInitial extends PeopleState {}

final class PoepleFetchLoading extends PeopleState {}

final class PoepleFetchSucces extends PeopleState {
  final List<People> peopleList;

  PoepleFetchSucces(this.peopleList);
}

final class PoepleFetchError extends PeopleState {
  final String errorMsg;
  PoepleFetchError(this.errorMsg);
}
