import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key, required this.enabled});
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Container(
      color: const Color.fromARGB(255, 230, 46, 22),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
          child: const Text(
              style: TextStyle(
                color: Color.fromARGB(199, 255, 255, 255),
              ),
              'Already have a Path Account'),
        ),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(199, 255, 255, 255),
              side: const BorderSide(
                  color: Color.fromARGB(199, 255, 255, 255), width: 2),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              fixedSize: const Size(250, 60),
              textStyle:
                  const TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
          child: const Text('Log In'),
        )
      ]),
    );
  }
}
