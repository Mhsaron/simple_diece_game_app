import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.tealAccent,
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
  int rdn = 3;
  int bldn = 6;
  int brdn = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: <Widget>[
              Expanded(
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
              ),
              SizedBox(
                width: 60,
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rdn = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/$rdn.png'),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      bldn = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/$bldn.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      brdn = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/$brdn.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
