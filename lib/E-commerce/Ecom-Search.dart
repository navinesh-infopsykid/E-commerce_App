import 'package:flutter/material.dart';

class ecomsearch extends StatefulWidget {
  const ecomsearch({super.key});

  @override
  State<ecomsearch> createState() => _ecomsearchState();
}

class _ecomsearchState extends State<ecomsearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        leading: const BackButton(
        color: Colors.black,),
          backgroundColor: Colors.white,
          title: Container(
            height: 40,
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.document_scanner),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: ("Search by products,brands and more... ")
              ),
            ),
          ),
        ),
      ),
    );
  }
}
