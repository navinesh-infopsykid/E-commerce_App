import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'OTT.dart';


class detailsott extends StatefulWidget {
  const detailsott({Key? key}) : super(key: key);

  @override
  State<detailsott> createState() => _detailsottState();
}

class _detailsottState extends State<detailsott> {
  final controller = TextEditingController();
  bool isTextFieldEnabled = true;
  bool isbut = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Create  Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(

              controller: controller,
              enabled: isTextFieldEnabled,
              decoration: InputDecoration(
                labelText: "Your name ",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)
                ),
                suffixIcon: Icon(Icons.done),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              enabled: isTextFieldEnabled,
              decoration: InputDecoration(
                labelText: "Your age ",

                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                suffixIcon: Icon(Icons.done),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              decoration: InputDecoration(
                enabled: isTextFieldEnabled,
                labelText: "Your email ",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                suffixIcon: Icon(Icons.done),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(child: Text(
          isTextFieldEnabled == false ? "Edit" : "Ok",style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade300),
                onPressed: () {
                  setState(() {
                    isTextFieldEnabled = true;
                  });
                },),
              SizedBox(width: 30,),
              ElevatedButton(child: Text('Save',style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade300),
                onPressed: () {
                  setState(() {
                    isTextFieldEnabled = false;
                  });
                },),
            ],
          ),
          SizedBox(height: 20,),
          Divider(color: Colors.white,),
          SizedBox(height: 20,),
          Text("Select Your Icon ",style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          CarouselSlider.builder(
              options: CarouselOptions(
                height: 100,
                aspectRatio: 16/9,
                viewportFraction: 2,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 4,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 9,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
              {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/bg.jpeg"),
                      ),
                    ),
                  ),
                );
              }
          ),
          SizedBox(height: 40,),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade300),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OTT()));
              }, child: Text("Continue",style: TextStyle(color: Colors.black),)),
        ],
      ),
    );
  }
}
