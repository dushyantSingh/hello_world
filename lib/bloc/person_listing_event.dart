import 'package:hello_world/model/person.dart';

abstract class PersonListingEvent {}

class SelectionEvent extends PersonListingEvent {
  SelectionEvent();
}
