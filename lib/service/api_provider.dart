import '../model/person.dart';

abstract class ApiProvider {
  String baseURL = 'https://randomuser.me/api';
}

abstract class PersonApiType {
  Future<List<Person>> fetchPerson();
}
