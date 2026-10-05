import 'package:flutter/material.dart';
import 'package:flutter_widgets_aristova/styled_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.blue,
            Colors.red,
          ],
          begin: startAlignment,
          end: endAlignment,
        ), // LinearGradient
      ), // BoxDecoration
      child: Center(
        child: StyledText("Hello world!"),
      ), // Center
    ); // Container
  }
}
