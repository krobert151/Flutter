import 'package:flutter/material.dart';
import 'package:horizontal_scroll/widget/elemen_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EL BICHO'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          ),
          ElemenList(
            urlPhoto:
                'https://i.pinimg.com/550x/0d/2f/55/0d2f551071624a6172ccee3061e2ef37.jpg',
            name: 'CR7',
            lastName: 'er bicho',
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: [Text('data')],
      ),
    );
  }
}
