import 'package:flutter/material.dart';

import '../color.dart';
import 'OTT down.dart';
import 'OTT home.dart';
import 'OTT profile.dart';
import 'OTT search.dart';

class OTT extends StatefulWidget {
  const OTT({super.key});

  @override
  State<OTT> createState() => _OTTState();
}

class _OTTState extends State<OTT> {
  int _index= 0 ;


  final pages = [
    homeott(),
    searchott(),
    downott(),
    profileott(),
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

      bottomNavigationBar:

      Theme( data: Theme.of(context).copyWith(
        primaryColor: Colors.black
      ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),backgroundColor:Theme.of(context).bottomNavigationBarTheme.backgroundColor,label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white),backgroundColor:Theme.of(context).bottomNavigationBarTheme.backgroundColor,label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.download,color: Colors.white),backgroundColor:Theme.of(context).bottomNavigationBarTheme.backgroundColor,label: "Download"),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white),backgroundColor:Theme.of(context).bottomNavigationBarTheme.backgroundColor,label: "profile"),
          ],
          currentIndex: _index,
          onTap: tap,backgroundColor: Colors.black,
          selectedLabelStyle: TextStyle(color: card,),
          selectedItemColor: card,
          selectedIconTheme: IconThemeData(color: card),
          unselectedLabelStyle: TextStyle(color: Colors.white),
          unselectedItemColor: Colors.white,

        ),
      ),
    );
  }
}


