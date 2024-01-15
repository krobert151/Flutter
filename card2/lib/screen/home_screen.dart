import 'package:card2/widget/trip_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: const [
            TripCard(
                horaSalida: '20:55',
                horaLlegada: '20:05',
                destino: 'Londres',
                destinoAb: 'LHR',
                partida: 'Madrid',
                partidaAb: 'MAD',
                vuelo: 'Iberia 7448',
                duracion: '2h 10min')
          ],
        ),
      ),
    );
  }
}
