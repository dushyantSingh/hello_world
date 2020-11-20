import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/bloc/person_listing_bloc.dart';
import 'package:hello_world/bloc/person_listing_event.dart';
import 'package:hello_world/bloc/person_listing_state.dart';
import 'package:hello_world/pages/home/personList.dart';

import '../../service/person_repository.dart';

class HomePage extends StatefulWidget {
  final PersonRepository personService = PersonRepository();
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  PersonListingBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = PersonListingBloc(widget.personService);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PersonListingBloc>(
        create: (BuildContext context) => _bloc, child: PersonListView());
  }
}

class PersonListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PersonListingBloc _bloc = BlocProvider.of<PersonListingBloc>(context);
    _bloc.add(SelectionEvent());
    return BlocBuilder<PersonListingBloc, PersonListingState>(
        builder: (BuildContext context, PersonListingState state) {
      if (state is PersonFetchedState) {
        return PersonList(state.person);
      }
      return const CircularProgressIndicator();
    });
  }
}
