import 'package:flutter/material.dart';

class PresentHole extends StatefulWidget {
  @override
  _PresentHoleState createState() => _PresentHoleState();
}

class _PresentHoleState extends State<PresentHole> {
  int currentHole = 1;

  void _increaseHole() {
    setState(() {
      if (currentHole < 18) {
        currentHole++;
      }
    });
  }

  void _decreaseHole() {
    setState(() {
      if (currentHole > 1) {
        currentHole--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Flecha izquierda
        IconButton(
          icon: Icon(Icons.arrow_left),
          onPressed: _decreaseHole,
        ),
        // Texto que muestra el número del hoyo
        Text(
          'Hole $currentHole',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        // Flecha derecha
        IconButton(
          icon: Icon(Icons.arrow_right),
          onPressed: _increaseHole,
        ),
      ],
    );
  }
}
