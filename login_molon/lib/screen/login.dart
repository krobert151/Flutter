import 'package:flutter/material.dart';
import 'package:login_molon/widget/log_in.dart';
import 'package:login_molon/widget/logo.dart';
import 'package:login_molon/widget/sign_up.dart';
import 'package:login_molon/widget/terms_of_use.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 46, 22),
      ),
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 230, 46, 22),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Logo(),
          Register(enabled: true),
          Login(enabled: true),
          TermsOfUse()
        ]),
      ),
    );
  }
}
