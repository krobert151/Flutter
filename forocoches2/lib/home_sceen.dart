import 'package:flutter/material.dart';
import 'package:forocoches2/car_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 30, 54),
      ),
      body: Container(
        color: Colors.black12,
        child: ListView(
          children: const [
            CarCard(
              name: 'Citroen C1 Diesel o similar',
              photoUrl:
                  'https://www.autopista.es/uploads/s1/46/32/74/2/imagegallery-51490-5ac7313cc312f.jpeg',
              type: 'Mini',
              doors: '2-3 puertas',
              seats: 4,
              bags: 1,
              manual: true,
              aa: true,
              recomendation: 'El más barato, Buena puntuación',
              price: 35,
              offers: 45,
            ),
            CarCard(
              name: 'Citroen C1 Diesel o similar',
              photoUrl:
                  'https://www.autopista.es/uploads/s1/46/32/74/2/imagegallery-51490-5ac7313cc312f.jpeg',
              type: 'Mini',
              doors: '2-3 puertas',
              seats: 4,
              bags: 1,
              manual: true,
              aa: true,
              recomendation: 'El más barato, Buena puntuación',
              price: 35,
              offers: 45,
            ),
            CarCard(
              name: 'Citroen C1 Diesel o similar',
              photoUrl:
                  'https://www.autopista.es/uploads/s1/46/32/74/2/imagegallery-51490-5ac7313cc312f.jpeg',
              type: 'Mini',
              doors: '2-3 puertas',
              seats: 4,
              bags: 1,
              manual: true,
              aa: true,
              recomendation: 'El más barato, Buena puntuación',
              price: 35,
              offers: 45,
            ),
            CarCard(
              name: 'Citroen C1 Diesel o similar',
              photoUrl:
                  'https://www.autopista.es/uploads/s1/46/32/74/2/imagegallery-51490-5ac7313cc312f.jpeg',
              type: 'Mini',
              doors: '2-3 puertas',
              seats: 4,
              bags: 1,
              manual: true,
              aa: true,
              recomendation: 'El más barato, Buena puntuación',
              price: 35,
              offers: 45,
            ),
            CarCard(
              name: 'Citroen C1 Diesel o similar',
              photoUrl:
                  'https://www.autopista.es/uploads/s1/46/32/74/2/imagegallery-51490-5ac7313cc312f.jpeg',
              type: 'Mini',
              doors: '2-3 puertas',
              seats: 4,
              bags: 1,
              manual: true,
              aa: true,
              recomendation: 'El más barato, Buena puntuación',
              price: 35,
              offers: 45,
            ),
          ],
        ),
      ),
    );
  }
}
