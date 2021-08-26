import 'package:dice_app/screens/dart_page.dart';
import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Dicee"),
        centerTitle: true,
      ),
      body: const DicePage(),
    );
  }
}
