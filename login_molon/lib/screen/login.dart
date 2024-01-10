import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const blanquito = TextStyle(
      color: Color.fromARGB(199, 255, 255, 255),
      fontWeight: FontWeight.bold,
    );

    const negrito = TextStyle(
        decoration: TextDecoration.none,
        color: Colors.black87,
        fontWeight: FontWeight.normal);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 46, 22),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 230, 46, 22),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Image(image: AssetImage('media/path_logo.png')),
                      Text(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white54),
                          'Beautifull, Private Sharing')
                    ],
                  )),
              Expanded(flex: 1, child: Divider()),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white54),
                          foregroundColor: MaterialStatePropertyAll(Colors.red),
                          fixedSize: MaterialStatePropertyAll(Size(250, 60)),
                          side: MaterialStatePropertyAll(BorderSide(
                              color: Color.fromARGB(199, 255, 255, 255),
                              width: 2)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))))),
                      child: Text('Sign Up'))),
              Expanded(
                  flex: 1,
                  child: OutlinedButton(
                      onPressed: null,
                      style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(250, 60)),
                          side: MaterialStatePropertyAll(BorderSide(
                              color: Color.fromARGB(199, 255, 255, 255),
                              width: 2)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))))),
                      child: Text('loggin'))),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text("By ussing Path, you agree to Path's"),
                      Text.rich(TextSpan(
                          text: 'Terms of Use',
                          style: blanquito,
                          children: <TextSpan>[
                            TextSpan(text: ' And ', style: negrito),
                            TextSpan(text: 'Privacity Policy', style: blanquito)
                          ]))
                    ],
                  ))
            ]),
      ),
    );
  }
}
