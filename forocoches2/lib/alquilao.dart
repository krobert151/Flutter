import 'package:flutter/material.dart';

class Alquilao extends StatelessWidget {
  const Alquilao({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(name.compareTo('Opel Corsa 2007').isOdd
                    ? 'https://pbs.twimg.com/media/F1FdtehX0AEc05q.jpg:large'
                    : 'https://pbs.twimg.com/media/FsGCq5KWYAAbiif.png'))),
        child: name.compareTo('Opel Corsa 2007').isEven
            ? const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      'no puede ser Jordi'),
                  Text(
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      'madafaking wild encima'),
                  Text(
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      'de un opel corsa blanco'),
                  Text(
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      'por Sabadell en 2007'),
                ],
              )
            : const Text(
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                'Comprao'),
      ),
    );
  }
}
