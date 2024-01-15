import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counterLocal = 0;
  int counterVisitor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Container(
                      child: Text(counterLocal.toString()),
                    ),
                    Container(
                      child: Column(children: [
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    counterLocal += 3;
                                  });
                                },
                                child: const Text('3')))
                      ]),
                    )
                  ],
                )),
            Expanded(child: Column()),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Container(
                      child: Text(counterVisitor.toString()),
                    )
                  ],
                ))
          ],
        ));
  }
}
