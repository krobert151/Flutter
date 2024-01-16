import 'package:flutter/material.dart';
import 'package:forocoches2/car_detail.dart';

class CarCard extends StatelessWidget {
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

  const CarCard({
    super.key,
    required this.name,
    required this.photoUrl,
    required this.type,
    required this.doors,
    required this.seats,
    required this.bags,
    required this.manual,
    required this.aa,
    required this.recomendation,
    required this.price,
    required this.offers,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      padding: const EdgeInsets.all(3),
      child: Card(
        surfaceTintColor: const Color.fromARGB(255, 255, 255, 255),
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Text(
                            style: const TextStyle(
                                color: Color.fromARGB(255, 6, 119, 10)),
                            recomendation)),
                    Expanded(
                        flex: 1,
                        child: Text(
                            style: const TextStyle(color: Colors.black45),
                            "$offers ofertas"))
                  ],
                ),
              ),
            ),
            Expanded(flex: 3, child: Image(image: NetworkImage(photoUrl))),
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          type),
                      Text('$doors · $name'),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Icon(manual
                                ? Icons.person
                                : Icons.disabled_by_default),
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(manual ? 'Manual' : 'Auto')),
                            Icon(aa
                                ? Icons.snowing
                                : Icons.temple_hindu_rounded),
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(aa ? 'A/A' : 'Hadam Hudsein')),
                            const Icon(Icons.person),
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(seats.toString())),
                            const Icon(Icons.badge),
                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(bags.toString()))
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                            textAlign: TextAlign.center, price.toString())),
                    Expanded(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CarDetail(
                                        name: name,
                                        photoUrl: photoUrl,
                                        type: type,
                                        doors: doors,
                                        seats: seats,
                                        bags: bags,
                                        aa: aa,
                                        manual: manual,
                                        recomendation: recomendation,
                                        price: price,
                                        offers: offers)));
                          },
                          child: const Text(
                              textAlign: TextAlign.center, 'SELECT')),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
