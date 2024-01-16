import 'package:flutter/material.dart';

class CarDetail extends StatelessWidget {
  final String name;
  final String photoUrl;
  final String type;
  final String doors;
  final int seats;
  final int bags;
  final bool aa;
  final bool manual;
  final String recomendation;
  final double price;
  final int offers;

  const CarDetail(
      {super.key,
      required this.name,
      required this.photoUrl,
      required this.type,
      required this.doors,
      required this.seats,
      required this.bags,
      required this.aa,
      required this.manual,
      required this.recomendation,
      required this.price,
      required this.offers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(name),
            Container(
              child: Image(image: NetworkImage(photoUrl)),
            ),
            Text(type),
            Text(doors)
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i1.sndcdn.com/avatars-XXzxh8piTnbN2qUS-HzmzlA-t240x240.jpg'))),
      ),
    );
  }
}
