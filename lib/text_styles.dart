import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  const TextStyles(this.text, {super.key});
  // ^^ We are making the text available as an argument for the class ^^
  // capturing the text in a variable within the class
  // 'final' variable keyword because the variable will not be changed internally
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
