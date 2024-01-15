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
      body: Row(children: [
        Expanded(
          child: Column(
            children: [
              Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 193, 23)),
                      counterLocal.toString())),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          FloatingActionButton(
                            backgroundColor: Color.fromARGB(255, 0, 0, 0),
                            splashColor: Color.fromARGB(255, 51, 51, 51),
                            onPressed: () => {
                              setState(() {
                                counterLocal += 3;
                              })
                            },
                            child: const Text(
                                style: TextStyle(color: Colors.red), '3'),
                          ),
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                counterLocal += 2;
                              })
                            },
                            child: const Text('2'),
                          ),
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                counterLocal++;
                              })
                            },
                            child: const Text('1'),
                          ),
                        ],
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () => {
                        setState(
                          () {
                            counterLocal--;
                          },
                        )
                      },
                      child: const Text('-1'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(
                      style: const TextStyle(color: Colors.red),
                      counterVisitor.toString())),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                counterVisitor += 3;
                              })
                            },
                            child: const Text('3'),
                          ),
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                counterVisitor += 2;
                              })
                            },
                            child: const Text('2'),
                          ),
                          FloatingActionButton(
                            onPressed: () => {
                              setState(() {
                                counterVisitor++;
                              })
                            },
                            child: const Text('1'),
                          ),
                        ],
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () => {
                        setState(
                          () {
                            counterVisitor--;
                          },
                        )
                      },
                      child: const Text('-1'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
