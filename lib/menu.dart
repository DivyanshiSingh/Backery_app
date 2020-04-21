import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          width: 150,
          color: Colors.pink,
        ),
        Container(
          width: 200,
          color: Colors.white,
        ),
      ],
    ));
  }
}
