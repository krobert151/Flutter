import 'package:bloc/bloc.dart';
import 'package:blocmovies/models/poeple_popular_response/poeple_popular_response.dart';
import 'package:blocmovies/repositories/people/people_repository.dart';
import 'package:meta/meta.dart';

part 'people_event.dart';
part 'people_state.dart';

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final PoepleRepository _peopleReository;

  PeopleBloc(this._peopleReository) : super(PeopleInitial()) {
    on<PeopleFetchPopular>(_onPeopleFetchPopular);
  }

  void _onPeopleFetchPopular(
      PeopleFetchPopular event, Emitter<PeopleState> emit) async {
    try {
      final peopleList = await _peopleReository.fetchPopularPeople();
      emit(PoepleFetchSucces(peopleList));
    } catch (e) {
      emit(PoepleFetchError(e.toString()));
    }
  }
}
