import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('Magic 8Ball'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: HomePage(),
        ),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int answer = 5;

  void randomize() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('The answer to all your wonders.',
          style: TextStyle(
            color: Colors.white
          ),),
          Expanded(
                child: TextButton(
                onPressed: () {
                  randomize();
                },
                child: Image.asset('images/ball$answer.png')),
          )
        ],
      ),
    );
  }
}
