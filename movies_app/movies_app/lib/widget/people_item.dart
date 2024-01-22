import 'package:flutter/material.dart';
import 'package:movies_app/popular_people_response/result.dart';

class PeopleItem extends StatelessWidget {
  const PeopleItem({super.key, required this.person});
  final Result person;
  @override
  Widget build(BuildContext context) {
    return Text(person.name.toString());
  }
}
