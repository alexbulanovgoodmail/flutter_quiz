import 'package:flutter/material.dart';

class ScreenStart extends StatelessWidget {
  const ScreenStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300.0,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80.0),
        const Text(
          'Flutter — учись с интересом!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24.0),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 4.0,
              right: 24.0,
              bottom: 4.0,
              left: 4.0,
            ),
            foregroundColor: Colors.white,
            side: const BorderSide(width: 2.0, color: Colors.white),
          ),
          label: const Text(
            'Начать',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          icon: const Icon(Icons.arrow_right, size: 36.0),
        ),
      ],
    );
  }
}
