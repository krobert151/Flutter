// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/people_details_response/people_details_response.dart';

import 'package:movies_app/widget/people_details_info.dart';

Future<PeopleDetailsResponse> fetchPerson(int number) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/$number?api_key=6378dffd686235eb901105c6c1dd8398'));
  if (response.statusCode == 200) {
    final toReturn = PeopleDetailsResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class PeopleDetailsScreen extends StatefulWidget {
  const PeopleDetailsScreen({super.key, required this.num});
  final int num;

  @override
  State<PeopleDetailsScreen> createState() =>
      _PeopleDetailsScreenState(number: num);
}

class _PeopleDetailsScreenState extends State<PeopleDetailsScreen> {
  final int number;
  late Future<PeopleDetailsResponse> people_details_response;

  _PeopleDetailsScreenState({required this.number});

  @override
  void initState() {
    super.initState();
    people_details_response = fetchPerson(number);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: people_details_response,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.data!.name.toString()),
            ),
            body: PeopleDetailsInfo(
              people: snapshot.requireData,
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
