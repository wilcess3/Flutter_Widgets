import 'package:flutter/material.dart';
import 'package:flutter_widgets_aristova/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;

  const GradientContainer(
    this.color1,
    this.color2,
    this.color3, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ), // LinearGradient
      ), // BoxDecoration
      child: Center(
        child: Image.asset(
          'assets/images/dice-1.png',
          width: 300,
        ),
      ), // Center
    ); // Container
  }
}
