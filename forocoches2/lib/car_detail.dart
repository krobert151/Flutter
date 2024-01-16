import 'package:flutter/material.dart';
import 'package:forocoches2/alquilao.dart';

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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 30, 54),
        titleTextStyle: const TextStyle(color: Colors.amber, fontSize: 25),
        centerTitle: true,
        title: const Text('FO**COCHES'),
      ),
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              name),
        ),
        Image(image: NetworkImage(photoUrl)),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(manual ? Icons.person : Icons.disabled_by_default),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(manual ? 'Manual' : 'Auto')),
              Icon(aa ? Icons.snowing : Icons.temple_hindu_rounded),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(aa ? 'A/A' : 'Hadam Hudsein')),
              const Icon(Icons.person),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(seats.toString())),
              const Icon(Icons.badge),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(bags.toString()))
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.center,
          child: Text(doors),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 125, 0, 0),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                      style: TextStyle(color: Colors.white), 'Mu caro')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 17, 125, 0),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Alquilao(
                                  name: name,
                                )));
                  },
                  child: Text(
                      style: const TextStyle(color: Colors.white), "$price €"))
            ],
          ),
        )
      ]),
    );
  }
}
