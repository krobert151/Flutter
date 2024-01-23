import 'package:flutter/material.dart';
import 'package:movies_app/people_details_response/people_details_response.dart';

class PeopleDetailsInfo extends StatelessWidget {
  final PeopleDetailsResponse people;
  const PeopleDetailsInfo({super.key, required this.people});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(88, 0, 0, 0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 150,
            child: Image(
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500/${people.profilePath}')),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popularity = ${people.popularity}',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'Birthday = ${people.birthday}',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'Know for = ${people.knownForDepartment}',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
