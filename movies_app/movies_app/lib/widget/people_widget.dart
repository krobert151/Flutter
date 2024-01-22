import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/popular_people_response/popular_people_response.dart';
import 'package:movies_app/widget/people_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

Future<PopularPeopleResponse> fetchPeople() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/person/popular?api_key=6378dffd686235eb901105c6c1dd8398'));
  if (response.statusCode == 200) {
    final toReturn = PopularPeopleResponse.fromJson(response.body);
    return toReturn;
  } else {
    throw Exception('Failed to load album');
  }
}

class PeopleWidget extends StatefulWidget {
  const PeopleWidget({super.key});

  @override
  State<PeopleWidget> createState() => _PeopleWidgetState();
}

class _PeopleWidgetState extends State<PeopleWidget> {
  late Future<PopularPeopleResponse> peopleResponse;

  @override
  void initState() {
    super.initState();
    peopleResponse = fetchPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder<PopularPeopleResponse>(
        future: peopleResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Skeletonizer(
                enabled: false,
                child: ListView.builder(
                    itemCount: snapshot.data!.results!.length,
                    itemBuilder: (context, index) {
                      return PeopleItem(
                        person: snapshot.data!.results![index],
                      );
                    }));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
