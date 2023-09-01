import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:page_transition/page_transition.dart';


class frudet extends StatefulWidget {

  final String description;
  final String benefits;
  final String name;
  final String images;
  const frudet({super.key,required this.description,required this.images,required this.name,required this.benefits});

  @override
  State<frudet> createState() => _frudetState();
}

class _frudetState extends State<frudet> {

  String dropdownvalue = 'Size M';

  // List of items in our dropdown menu

  String? col;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child:AppBar(
          leading: const BackButton(
            color: Colors.black,),
          backgroundColor: Colors.white,

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Center(child: Text("About ${widget.name}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ),
            Divider(thickness: 5,),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(widget.images)
                      )
                    ),
                  ),
                ),
              ],
            ),
            Divider(thickness: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Center(child: Text("Nutrition Content",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ),
            Divider(thickness: 5,),

            Padding(
              padding: const EdgeInsets.all( 20.0),
              child: Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    border: Border.all(color: Colors.black,width: 3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(widget.description,textAlign: TextAlign.left,style: TextStyle(fontSize: 20),),
                  )),
            ),
            Divider(thickness: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Center(child: Text("Health Benefits",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ),
            Divider(thickness: 5,),
            Padding(
              padding: const EdgeInsets.all( 12.0),
              child: Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    border: Border.all(color: Colors.black,width: 3),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Text(widget.benefits,textAlign: TextAlign.left,style: TextStyle(fontSize: 20),)),
            ),


          ],
        ),
      ),

    );
  }
}
