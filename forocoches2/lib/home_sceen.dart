import 'package:flutter/material.dart';
import 'package:forocoches2/car_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 30, 54),
        titleTextStyle: const TextStyle(color: Colors.amber, fontSize: 25),
        centerTitle: true,
        title: const Text('FO**COCHES'),
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
              name: 'Ford Raptor 2023',
              photoUrl:
                  'https://www.sahara4x4.com/data/modelos/d_fordraptor2023sahara.jpg',
              type: 'Coche wapo',
              doors: 'Muchas puertas',
              seats: 5,
              bags: 1,
              manual: true,
              aa: true,
              recomendation: 'Coche de Tronchamulas!!!',
              price: 50,
              offers: 1,
            ),
            CarCard(
              name: 'Seat ibiza wapo',
              photoUrl:
                  'https://www.seat.es/content/dam/public/seat-website/carworlds/new-cw-ibiza/overview/version-view/ibiza-fr/seat-ibiza-fr-colour-red-desire.png',
              type: 'Normal',
              doors: '5 puertas',
              seats: 4,
              bags: 1,
              manual: false,
              aa: true,
              recomendation: 'Asequible',
              price: 20,
              offers: 50,
            ),
            CarCard(
              name: 'Opel Corsa 2007',
              photoUrl: 'https://i.ibb.co/1TbDQCd/opel-Corsa2007sin-Jordi.jpg',
              type: 'Opel Colsa',
              doors: '4-5 puertas',
              seats: 5,
              bags: 1,
              manual: true,
              aa: true,
              recomendation: 'Opel Corsa Raro',
              price: 00,
              offers: 0,
            ),
            CarCard(
              name: 'Citroen C1 Diesel o similar',
              photoUrl:
                  'https://cdn-images.motor.es/image/m/800w.webp/fotos-noticias/2021/01/chevrolet-camaro-ford-mustang-dodge-challenger-ventas-2020-202174502-1610712872_2.jpg',
              type: 'Coche molón',
              doors: 'Tela de wapo',
              seats: 2,
              bags: 1,
              manual: true,
              aa: true,
              recomendation: 'Coche wapo wapo',
              price: 100,
              offers: 2,
            ),
          ],
        ),
      ),
    );
  }
}
