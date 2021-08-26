import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(10),
              ),
              onPressed: () {
                setState(() {
                  leftDiceNumber = checkFunction();
                  rightDiceNumber = checkFunction();
                });
              },
              child: Image.asset("image/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
            child: TextButton(
                style: TextButton.styleFrom(padding: const EdgeInsets.all(10)),
                onPressed: () {
                  setState(() {
                    rightDiceNumber = checkFunction();
                    leftDiceNumber = checkFunction();
                  });
                },
                child: Image.asset(
                  "image/dice$rightDiceNumber.png",
                )),
          ),
        ],
      ),
    );
  }

  int checkFunction() {
    return Random().nextInt(6) + 1;
  }
}
