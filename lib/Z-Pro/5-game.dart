import 'dart:math';
import 'package:flutter/material.dart';


class GuessTheNumberGame extends StatefulWidget {
  @override
  _GuessTheNumberGameState createState() => _GuessTheNumberGameState();
}

class _GuessTheNumberGameState extends State<GuessTheNumberGame> {
  late int _targetNumber;
  var _userGuess;
  late String _feedback;

  @override
  void initState() {
    super.initState();
    _startNewGame();
  }

  void _startNewGame() {
    setState(() {
      _targetNumber = Random().nextInt(100) ;
      _userGuess = null;
      _feedback = 'Try to guess the number!';
    });
  }

  void _checkGuess() {
    if (_userGuess == _targetNumber) {
      setState(() {
        _feedback = 'Congratulations! You guessed the number $_targetNumber!';
      });
    } else if (_userGuess < _targetNumber) {
      setState(() {
        _feedback = 'Try higher!';
      });
    } else {
      setState(() {
        _feedback = 'Try lower!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade200 ,
      appBar: AppBar(
        title: Text('Guess the Number Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _feedback,
              style: TextStyle(fontSize: 20,color: Colors.red),
            ),
            SizedBox(height: 20),
            _userGuess == null
                ? Container()
                : Text(
              'Your guess: $_userGuess',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            _userGuess == _targetNumber
                ? ElevatedButton(
              onPressed: _startNewGame,
              child: Text('Play Again',style: TextStyle(color: Colors.white)),
            )
                : Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      _userGuess = int.tryParse(value)!;
                    });
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _userGuess == null ? null : _checkGuess,
                  child: Text('Submit Guess',style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
