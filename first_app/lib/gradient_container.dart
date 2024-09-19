import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  final Color firstColor;
  final Color secondColor;

  void rollDice() {}

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize:MainAxisSize.min,
          children: [
          Image.asset('assets/images/dice-2.png', width: 200),
          TextButton(
            onPressed: rollDice, 
            style: TextButton.styleFrom(foregroundColor: Colors.white,textStyle: const TextStyle(fontSize:28)),
            child: const Text("Roll Dice"),)
        ]),
      ),
    );
  }
}
