import 'package:flutter/material.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Games2(),
    );
  }
}

class Games2 extends StatefulWidget {
  @override
  _Games2State createState() => _Games2State();
}

class _Games2State extends State<Games2> {
  double characterX = 0;
  double characterY = 0;

  void moveCharacter(double deltaX, double deltaY) {
    setState(() {
      characterX += deltaX;
      characterY += deltaY;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Game'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: characterX,
              top: characterY,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => moveCharacter(0, -20), // Move character up
            child: Icon(Icons.arrow_upward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () => moveCharacter(-20, 0), // Move character left
                child: Icon(Icons.arrow_back),
              ),
              FloatingActionButton(
                onPressed: () => moveCharacter(20, 0), // Move character right
                child: Icon(Icons.arrow_forward),
              ),
            ],
          ),
          FloatingActionButton(
            onPressed: () => moveCharacter(0, 20), // Move character down
            child: Icon(Icons.arrow_downward),
          ),
        ],
      ),
    );
  }
}
