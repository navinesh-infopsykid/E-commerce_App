import 'package:flutter/material.dart';



class AlphabetScreen extends StatelessWidget {
  final List<String> alphabets = List.generate(26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabet Learning App'),
      ),
      body: ListView.builder(
        itemCount: alphabets.length,
        itemBuilder: (context, index) {
          final alphabet = alphabets[index];
          return ListTile(
            title: Text(alphabet),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlphabetDetailScreen(alphabet: alphabet),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class AlphabetDetailScreen extends StatelessWidget {
  final String alphabet;

  AlphabetDetailScreen({required this.alphabet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabet Detail'),
      ),
      body: Center(
        child: Text(
          'Letter $alphabet',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
