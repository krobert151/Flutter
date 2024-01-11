import 'package:flutter/material.dart';

class ElemenList extends StatelessWidget {
  final String urlPhoto;
  final String name;
  final String lastName;

  const ElemenList(
      {super.key,
      required this.urlPhoto,
      required this.name,
      required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: 250,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child:
                    Image(fit: BoxFit.contain, image: NetworkImage(urlPhoto))),
          ),
          Text(textAlign: TextAlign.left, name),
          Text(textAlign: TextAlign.left, lastName)
        ],
      ),
    );
  }
}
