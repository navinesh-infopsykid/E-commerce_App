import 'package:flutter/material.dart';
class dash extends StatelessWidget {
  const dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  CircleAvatar(child: Icon(Icons.person)),
        title: Text("DASHBOARD",style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.doorbell)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/black.jpg"),
                  fit: BoxFit.cover,
                )
            ),
          )
        ],
      ),
    );
  }
}
