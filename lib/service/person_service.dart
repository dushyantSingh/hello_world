import 'dart:convert';

import 'package:hello_world/model/person.dart';
import 'package:hello_world/service/api_provider.dart';
import 'package:http/http.dart' as http;

class PersonApiProvider extends ApiProvider implements PersonApiType {
  final int successCode = 200;
  @override
  Future<List<Person>> fetchPerson() async {
    final http.Response response = await http.get(baseURL);
    if (response.statusCode == successCode) {
      final Map<dynamic, dynamic> peopleData =
          jsonDecode(response.body) as Map<dynamic, dynamic>;
      final List<dynamic> people = peopleData['results'] as List<dynamic>;
      return people
          .map((dynamic json) => Person.fromJson(json as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Something went wrong, ${response.statusCode}');
    }
  }
}
