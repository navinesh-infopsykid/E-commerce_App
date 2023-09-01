import 'package:flutter/material.dart';

import 'carttt.dart';



class shopcart extends StatefulWidget {
  @override
  _shopcartState createState() => _shopcartState();
}

class _shopcartState extends State<shopcart> {
  List<String> cartItems = [];

  void addToCart(String item) {
    setState(() {
      cartItems.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(productList[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      addToCart(productList[index]);
                    },
                  ),
                );
              },
            ),
          ),
          Divider(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
            },
            child: Text('Go to Cart'),
          ),
          Divider(),
          Text(
            'Cart Items:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<String> productList = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];
