import 'package:flutter/material.dart';
class ecomnotify extends StatefulWidget {
  const ecomnotify({super.key});

  @override
  State<ecomnotify> createState() => _ecomnotifyState();
}

class _ecomnotifyState extends State<ecomnotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
        color: Colors.black,),
        backgroundColor: Colors.white,
        title: Text("Notifications",style: TextStyle(color: Colors.black),),

      ),
    );
  }
}
