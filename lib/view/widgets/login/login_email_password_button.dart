import 'package:dicoding/view/screens/navbar/navbar.dart';
import 'package:flutter/material.dart';

class LoginEmailPasswordButton extends StatelessWidget {
  const LoginEmailPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const Navbar(),
          ),
        );
      },
      child: const Text('Masuk'),
    );
  }
}
