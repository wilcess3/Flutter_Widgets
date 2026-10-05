import 'package:flutter/material.dart';
import 'package:flutter_widgets_aristova/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Colors.white,
          Colors.blue,
          Colors.red,
        ),
      ), // Scaffold
    ), // MaterialApp
  );
}
