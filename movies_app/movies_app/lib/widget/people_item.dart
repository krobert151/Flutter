import 'package:flutter/material.dart';
import 'package:movies_app/popular_people_response/result.dart';
import 'package:movies_app/screen/person_detail_screen.dart';

class PeopleItem extends StatelessWidget {
  const PeopleItem({super.key, required this.person});
  final Result person;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PeopleDetailsScreen(
                  num: person.id!,
                ),
              ));
        },
        child: Column(
          children: [
            Text(person.name.toString()),
            Image(
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500/${person.profilePath}')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(person.knownForDepartment.toString()),
                Row(
                  children: [
                    Text(person.popularity.toString()),
                    const Icon(Icons.fingerprint)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
