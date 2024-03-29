import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key, required this.enabled});
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;

    return Container(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            backgroundColor: const Color.fromARGB(240, 255, 252, 252),
            fixedSize: const Size(250, 60),
            textStyle: const TextStyle(
                color: Color.fromARGB(255, 230, 46, 22),
                fontWeight: FontWeight.w600,
                fontSize: 20)),
        child: const Text('Sign Up'),
      ),
    );
  }
}
