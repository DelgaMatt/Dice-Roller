import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  const TextStyles({super.key});

  @override
  Widget build(context) {
    return const Center(
      // Center widget from Flutter docs
      child: Text(
        "Hello World!",
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}
