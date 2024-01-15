import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final String horaSalida;
  final String horaLlegada;
  final String destino;
  final String destinoAb;
  final String partida;
  final String partidaAb;
  final String vuelo;
  final String duracion;

  const TripCard(
      {super.key,
      required this.horaSalida,
      required this.horaLlegada,
      required this.destino,
      required this.destinoAb,
      required this.partida,
      required this.partidaAb,
      required this.vuelo,
      required this.duracion});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [Text(horaSalida), Text('Salida')],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                          border: Border.all(color: Colors.black)),
                      child: Text(partidaAb),
                    ),
                    Text(partida)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
