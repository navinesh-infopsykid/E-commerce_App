import 'package:flutter/material.dart';

import 'Ecom-Bag.dart';
import 'Ecom-Wishlist.dart';
import 'Ecom-account.dart';
import 'Ecom-home.dart';
import 'Ecomstore.dart';


class ecommain extends StatefulWidget {
  const ecommain({super.key});

  @override
  State<ecommain> createState() => _ecommainState();
}

class _ecommainState extends State<ecommain> {
  int _index= 0 ;


  final pages = [
    ecomhomes(),
    ecomstores(),
    ecomaccnt(),
    ecomwish(),
    ecombag(),
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
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.storefront_rounded,color: Colors.black),label: "Stores"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded,color: Colors.black),label: "Account"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded,color: Colors.black),label: "Wishlist"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black),label: "Bag"),
          ],
          currentIndex: _index,
          onTap: tap,backgroundColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.black),
          selectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          unselectedItemColor: Colors.black,

        ),
      ),
    );
  }
}
