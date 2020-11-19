import 'dart:convert';

import 'package:hello_world/model/person.dart';
import 'package:http/http.dart' as http;

const String randomPersonURL = 'https://randomuser.me/api';

class PersonNetworkService {
  Future<List<Person>> fetchPerson() async {
    final http.Response response = await http.get(randomPersonURL);
    if (response.statusCode == 200) {
      final Map<String, dynamic> peopleData = jsonDecode(response.body);
      final List<dynamic> people = peopleData['results'];
      return people.map((json) => Person.fromJson(json)).toList();
    } else {
      throw Exception('Something went wrong, ${response.statusCode}');
    }
  }
}
