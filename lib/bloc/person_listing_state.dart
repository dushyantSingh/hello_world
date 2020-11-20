import 'package:hello_world/model/person.dart';

abstract class PersonListingState {}

class PersonUninitializedState extends PersonListingState {}

class PersonFetchingState extends PersonListingState {}

class PersonFetchedState extends PersonListingState {
  PersonFetchedState(this.person);
  final List<Person> person;
}

class PersonErrorState extends PersonListingState {}

class PersonEmptyState extends PersonListingState {}
