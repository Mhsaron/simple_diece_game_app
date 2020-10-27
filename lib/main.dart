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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Image(
            image: AssetImage('images/1.png'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Image(
            image: AssetImage('images/1.png'),
          ),
        )
      ],
    );
  }
}
