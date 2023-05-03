import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceno =6;
  int rightdiceno=1;
  void dice(){
    leftDiceno=Random().nextInt(6)+1;
    rightdiceno=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  child: Image.asset('images/dice$leftDiceno.png'),
                  onPressed: () {
                    setState(() {
                      dice();
                    });

                    print("left button pressed");
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  child: Image.asset('images/dice$rightdiceno.png'),
                  onPressed: () {
                    setState(() {
                      dice();
                    });
                    print("right button pressed");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
