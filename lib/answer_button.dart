import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.label,
    this.callback,
  });

  final String label;
  final void Function()? callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // 👈 растягиваем кнопку на всю ширину
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 28.0,
          ),
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
