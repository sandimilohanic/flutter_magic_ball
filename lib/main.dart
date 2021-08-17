import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(home: BallPage()));

class BallPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.lightBlue[900],
        ),
        body: Ball());
  }
}

class _BallState extends State<Ball> {
  @override
  int ballNumber = 0;

  void _changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          _changeBallNumber();
          print(ballNumber);
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}
