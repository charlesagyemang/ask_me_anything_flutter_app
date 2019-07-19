import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anything'),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  
  int randomizeNumber () {
    return Random().nextInt(4) + 1;
  }

  void giveAnswer(){
    setState(() {
      ballNumber = randomizeNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            giveAnswer();
            print('I Got Clicked $ballNumber');
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
