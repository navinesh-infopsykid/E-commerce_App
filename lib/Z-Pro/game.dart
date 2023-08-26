import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(TapTheBallGame());
}

class TapTheBallGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  double ballX = 0;
  double ballY = 0;
  int score = 0;

  void resetBallPosition() {
    setState(() {
      ballX = Random().nextInt(300).toDouble();
      ballY = Random().nextInt(500).toDouble();
    });
  }

  void increaseScore() {
    setState(() {
      score++;
    });
    resetBallPosition();
  }

  @override
  void initState() {
    super.initState();
    resetBallPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tap the Ball Game'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            increaseScore();
          },
          child: Stack(
            children: [
              Positioned(
                left: ballX,
                top: ballY,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Score: $score'),
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    score = 0;
                  });
                  resetBallPosition();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
