import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;

  var activeDiceImage =
      'assets/images/dice-1.png';

  GradientContainer(
    this.color1,
    this.color2,
    this.color3, {
    super.key,
  });

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Изменили картинку');
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              // const SizedBox(height: 20),
              activeDiceImage,
              width: 300,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.lime,
                textStyle: const TextStyle(
                  fontSize: 30,
                ),
              ),
              child: Text("Roll Dice"),
            ),
          ],
        ),
      ), // Center
    ); // Container
  }
}
