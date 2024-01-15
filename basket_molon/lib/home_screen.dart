import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int localPoints = 0;
  int visitorPoints = 0;
  String team1 = 'local';
  String team2 = 'visitors';

  bool darkMode = false;

  var lightPointsButtom = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 223, 223, 223),
    fixedSize: const Size(100, 50),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );

  var darkPointsButtom = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 91, 91, 91),
    fixedSize: const Size(100, 50),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );

  var blackNumberOnButton =
      const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  var whitheNumberOnButton =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  var darkBackground = const BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              'https://th.bing.com/th/id/OIG.D1Dt7UBAYWDy3e9VMTWi?pid=ImgGn')));

  var lightBackground = const BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              'https://th.bing.com/th/id/OIG.7LUBHhIK4WaEbYMu72g1?pid=ImgGn')));

  Container marker(int ponits, String team) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(
              color: Color.fromARGB(154, 255, 204, 0),
              width: 3,
              style: BorderStyle.solid),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      height: 120,
      width: 120,
      alignment: Alignment.bottomCenter,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
            style: const TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 255, 204, 0)),
            ponits.toString()),
        Text(
            style: const TextStyle(color: Color.fromARGB(255, 255, 204, 0)),
            team)
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: darkMode ? darkBackground : lightBackground,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: darkMode
                              ? Color.fromARGB(255, 255, 1, 1)
                              : Color.fromARGB(255, 56, 19, 19)),
                      "Basket Molon"),
                )),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      marker(localPoints, team1),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: darkMode
                                    ? darkPointsButtom
                                    : lightPointsButtom,
                                onPressed: () {
                                  setState(() {
                                    localPoints += 3;
                                  });
                                },
                                child: Text(
                                    style: darkMode
                                        ? whitheNumberOnButton
                                        : blackNumberOnButton,
                                    '3')),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: darkMode
                                    ? darkPointsButtom
                                    : lightPointsButtom,
                                onPressed: () {
                                  setState(() {
                                    localPoints += 2;
                                  });
                                },
                                child: Text(
                                    style: darkMode
                                        ? whitheNumberOnButton
                                        : blackNumberOnButton,
                                    '2')),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: darkMode
                                    ? darkPointsButtom
                                    : lightPointsButtom,
                                onPressed: () {
                                  setState(() {
                                    localPoints += 1;
                                  });
                                },
                                child: Text(
                                    style: darkMode
                                        ? whitheNumberOnButton
                                        : blackNumberOnButton,
                                    '1')),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: darkMode
                                    ? darkPointsButtom
                                    : lightPointsButtom,
                                onPressed: () {
                                  setState(() {
                                    localPoints -= 1;
                                  });
                                },
                                child: Text(
                                    style: darkMode
                                        ? whitheNumberOnButton
                                        : blackNumberOnButton,
                                    '-1')),
                          ),
                        ],
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: darkMode ? darkPointsButtom : lightPointsButtom,
                        onPressed: () {
                          setState(() {
                            visitorPoints = 0;
                            localPoints = 0;
                          });
                        },
                        child: Icon(Icons.replay,
                            color: darkMode
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Color.fromARGB(255, 77, 76, 74)),
                      ),
                      Switch(
                          value: darkMode,
                          onChanged: (bool value) {
                            setState(() {
                              darkMode = value;
                            });
                          }),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      marker(visitorPoints, team2),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Container(
                              child: ElevatedButton(
                                  style: darkMode
                                      ? darkPointsButtom
                                      : lightPointsButtom,
                                  onPressed: () {
                                    setState(() {
                                      visitorPoints += 3;
                                    });
                                  },
                                  child: Text(
                                      style: darkMode
                                          ? whitheNumberOnButton
                                          : blackNumberOnButton,
                                      '3')),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: darkMode
                                    ? darkPointsButtom
                                    : lightPointsButtom,
                                onPressed: () {
                                  setState(() {
                                    visitorPoints += 2;
                                  });
                                },
                                child: Text(
                                    style: darkMode
                                        ? whitheNumberOnButton
                                        : blackNumberOnButton,
                                    '2')),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: darkMode
                                    ? darkPointsButtom
                                    : lightPointsButtom,
                                onPressed: () {
                                  setState(() {
                                    visitorPoints += 1;
                                  });
                                },
                                child: Text(
                                    style: darkMode
                                        ? whitheNumberOnButton
                                        : blackNumberOnButton,
                                    '1')),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: ElevatedButton(
                                style: darkMode
                                    ? darkPointsButtom
                                    : lightPointsButtom,
                                onPressed: () {
                                  setState(() {
                                    visitorPoints -= 1;
                                  });
                                },
                                child: Text(
                                    style: darkMode
                                        ? whitheNumberOnButton
                                        : blackNumberOnButton,
                                    '-1')),
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
