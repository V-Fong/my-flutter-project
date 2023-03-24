import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset(
                'images/ball$ballNumber.png'
            ),
          ),
        ),
      ),
    );
  }
}
