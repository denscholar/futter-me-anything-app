import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text('Ask Me Anything',
              style: TextStyle(
                  fontFamily: 'ArchivoBlack',
                  fontSize: 20.0,
                  letterSpacing: 2.5)),
        ),
      ),
      body: Magic(),
    );
  }
}

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int answerQuestion = 1;

  void onAnswer() {
    setState(() {
      answerQuestion = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                onAnswer();
              },
              child: Image.asset(
                'images/ball$answerQuestion.png',
                height: 250.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
