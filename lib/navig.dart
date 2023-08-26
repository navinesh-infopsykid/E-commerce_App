import 'package:flutter/material.dart';
import 'package:testtt/Amazon.dart';
import 'package:testtt/home.dart';
import 'package:testtt/secroute.dart';

import 'Spotify.dart';
import 'newpage.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index= 0 ;


  final pages = [
    amazon(),
    spot(),
    Secondroute(),
  ];


  void tap(index)
  {
    setState(() {
      _index =index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_index],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}

