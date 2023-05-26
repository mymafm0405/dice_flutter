import 'package:flutter/material.dart';
import 'package:f_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          Color.fromARGB(255, 34, 144, 255), Color.fromARGB(255, 87, 46, 34)),
    ),
  ));
}
