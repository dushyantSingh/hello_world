import 'package:hello_world/model/person.dart';
import 'package:hello_world/service/person_service.dart';

class PersonRepository {
  final PersonApiProvider _personApiProvider = PersonApiProvider();
  Future<List<Person>> fetchPerson() => _personApiProvider.fetchPerson();
}
