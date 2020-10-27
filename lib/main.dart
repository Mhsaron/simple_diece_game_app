import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Center(child: Text('Ludo_Dicee')),
        backgroundColor: Colors.blue,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('images/$ldn.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ldn = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/$ldn.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
