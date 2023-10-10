// dart apps mostly use Google's Material UI
import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

//void is/as a return type
//main is the entry point in a Dart file
void main() {
  //Initialize and run Application. (Provided by Flutter)
  //Flutter UI's are created by combining & nesting widgets. this creates an object instance of the 'Material UI' widget - The Root widget

  // const colors = [
  //   Color.fromARGB(255, 21, 2, 65),
  //   Color.fromARGB(190, 46, 7, 100)
  // ];

  runApp(
    const MaterialApp(
      // "home" parameter is used to specify the initial widget/route displayed
      home: Scaffold(
          // Scaffold widget is typically the app Bar at the top of the screen
          body: GradientContainer(colors: [Color.fromARGB(255, 21, 2, 65),Color.fromARGB(190, 46, 7, 100)]),
      ),
    ),
  );
}
