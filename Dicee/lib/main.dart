import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade800,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.purple.shade600,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 3;

  void trowDice() {
    setState(
      () {
        leftDice = Random().nextInt(6) + 1;
        rightDice = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                trowDice();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                trowDice();
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          )
        ],
      ),
    );
  }
}
