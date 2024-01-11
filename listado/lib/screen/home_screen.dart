import 'package:flutter/material.dart';
import 'package:listado/widget/restaurant_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 15,
          shadowColor: Color.fromARGB(121, 75, 75, 75),
          foregroundColor: const Color.fromARGB(255, 255, 225, 222),
          backgroundColor: Colors.black,
          title: const Row(
            children: [
              Icon(Icons.food_bank_outlined),
              Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  'Restraurantes de Gerena City'),
            ],
          )),
      backgroundColor: const Color.fromARGB(221, 73, 0, 0),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            ListItem(
                urlImage:
                    'https://haciendatorreonnazari.es/wp-content/uploads/2018/12/Casasalvi4-1024x410.jpg',
                name: 'El salvi',
                valoration: 5,
                direction: 'C/Gerena',
                price: 12),
            ListItem(
                urlImage:
                    'https://images.mnstatic.com/23/ca/23ca33c38225fab66781e07c2b644eda.jpg',
                name: 'La laguna',
                valoration: 3,
                direction: 'C/Cash',
                price: 15),
            ListItem(
                urlImage:
                    'https://img.restaurantguru.com/cf42-Restaurant-GERENA-DONNER-KEBAB-food.jpg',
                name: 'Kbab Gerena',
                valoration: 1,
                direction: 'C/Mugre',
                price: 4),
            ListItem(
                urlImage:
                    'https://sevilla.cosasdecome.es/wp-content/uploads/2022/08/Entrada-Casa-Chico.jpg',
                name: 'Casa chico',
                valoration: 4,
                direction: 'C/Garrobo',
                price: 20),
            ListItem(
                urlImage:
                    'https://compraengerena.es/export/sites/compraengerena/.galleries/imagenes-empresas/mundopizza.jpg_1118810275.jpg',
                name: 'El Mundo Pizza',
                valoration: 4,
                direction: 'C/Garrobo',
                price: 8),
            ListItem(
                urlImage:
                    'https://static-sevilla.abc.es/media/gurmesevilla/2021/01/la-gelida-gerena-1-1024x576.jpg',
                name: 'La gélida',
                valoration: 4,
                direction: 'C/Centro',
                price: 14),
          ],
        ),
      ),
    );
  }
}
