import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'classapi.dart';

class apipro extends StatefulWidget {
 final int idd;
 final String titlee;
 final String pricee;
 final String descriptionn;
 final String categoryy;
 final String imagee;
 final String ratingg;
  const apipro({super.key,required this.idd,
    required this.titlee,
    required this.pricee,
    required this.descriptionn,
    required this.categoryy,
    required this.imagee,
    required this.ratingg});


  @override
  State<apipro> createState() => _apiproState();
}

class _apiproState extends State<apipro> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom",style: TextStyle(
          color: Colors.white
        ),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(widget.titlee),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.imagee)
                  )
              ),),
            Text(widget.descriptionn),
            Text(widget.pricee.toString()),
            Text(widget.ratingg.toString()),
            Text(widget.categoryy),

          ],
        ),
      )
    );
  }
}
