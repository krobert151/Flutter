import 'package:flutter/material.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: const Column(
        children: [
            Text("By ussing Path, you agree to Path's"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(
                    color: Color.fromARGB(199, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    ),
                    " Terms of Use "),
                Text("And"),
                Text(
                    style: TextStyle(
                    color: Color.fromARGB(199, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    ),
                  " Privacity Policy")
            ],
          )       
        ],
      )
    );
  }
}