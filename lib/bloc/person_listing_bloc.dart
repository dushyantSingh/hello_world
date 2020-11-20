import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/bloc/person_listing_event.dart';
import 'package:hello_world/bloc/person_listing_state.dart';
import 'package:hello_world/model/person.dart';
import 'package:hello_world/service/person_repository.dart';

class PersonListingBloc extends Bloc<PersonListingEvent, PersonListingState> {
  PersonListingBloc(this.personRepository) : super(null);
  PersonRepository personRepository;
  PersonListingState get initialState => PersonUninitializedState();
  @override
  Stream<PersonListingState> mapEventToState(PersonListingEvent event) async* {
    if (event is SelectionEvent) {
      yield PersonFetchingState();
      try {
        final List<Person> person = await personRepository.fetchPerson();
        if (person.isEmpty) {
          yield PersonEmptyState();
        } else {
          yield PersonFetchedState(person);
        }
      } catch (e) {
        yield PersonErrorState();
      }
    }
  }
}
