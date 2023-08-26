import 'dart:developer';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
    child:AppBar(
      leading: Container(
          height: 25,
          width: 25,
          margin: EdgeInsets.fromLTRB(0, 0, 0,0),
          padding: EdgeInsets.fromLTRB(0, 0, 0,0),
          child: Icon(Icons.arrow_back)),
        backgroundColor: Colors.cyanAccent.shade200,
        title:SizedBox(
          height: 45,
          width: 350,
          child: TextFormField(
              decoration: InputDecoration(
                labelText: ("Search Amazon.in "),
                  filled: true,fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.document_scanner),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
              ),
          ),
        ),
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
               children: [
                 CarouselSlider.builder(
                     options: CarouselOptions(
                       height: 380,
                       aspectRatio: 1/1,
                       viewportFraction: 1,
                       initialPage: 0,
                       enableInfiniteScroll: true,
                       reverse: false,
                       autoPlay: false,
                       autoPlayInterval: Duration(seconds: 3),
                       autoPlayAnimationDuration: Duration(milliseconds: 800),
                       autoPlayCurve: Curves.fastOutSlowIn,
                       enlargeCenterPage: true,
                       enlargeFactor: 0.3,
                       //onPageChanged: callbackFunction,
                       scrollDirection: Axis.horizontal,
                     ),
                     itemCount: 9,
                     itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                     {
                       return Container(
                         width: 400,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           //color: Colors.black,
                           image: DecorationImage(
                             fit: BoxFit.fill,
                             image: AssetImage("assets/images/3.jpg"),
                           ),
                         ),
                       );
                     }
                 ),
                 Positioned(right: 0.0,top: 0.0,
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Icon(Icons.ios_share),
                     ) ),
                 Positioned(right: 0.0,bottom: 0.0,
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Icon(Icons.bookmark_outline),
                     ) ),
                 Positioned(bottom:12,right:50,
                     child: Icon(Icons.favorite_border_outlined) ),
               ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                height: 80,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text("Visit the Adidas Store  ",style: TextStyle(
                            color: Colors.cyan,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("4.0 "),
                                ),
                                RatingBar(
                                  initialRating: 4,
                                  minRating: 0,
                                  maxRating: 5,
                                  allowHalfRating: true,
                                  itemSize: 20.0,
                                  ratingWidget: RatingWidget(
                                    full: const Icon(Icons.star, color: Colors.yellow),
                                    half: const Icon(Icons.star_half, color: Colors.yellow),
                                    empty: const Icon(Icons.star_border, color: Colors.yellow),
                                  ),
                                  onRatingUpdate: (rating) {
                                    // Rating is updated
                                    log('rating update to: $rating');
                                  },
                                ),
                                Text("  4517",style: TextStyle(color: Colors.blueAccent),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("Adidas Mens Elate Running Shoes",textAlign: TextAlign.left,)
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Text("Colour: "),
                    Text("CBLACK/FTTWHT",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: 2,
                  itemBuilder: (BuildContext con,index)
                  {
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 90,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Center(
                              child: Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black,width: 2),
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage("assets/images/3.jpg"),
                                  ),
                                ),
                              ),
                            ),
                            Center(child: Text('\u{20B9}${1999}',)),
                            Center(child: Text('\u{20B9}${3999}',style: TextStyle(
                              decoration: TextDecoration.lineThrough
                            ),)),

                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Size:"),
                  Text("10 UK",style: TextStyle(
                      fontWeight:FontWeight.bold ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 25,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.red
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(" Deal of the day",style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),),
                  )),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(text: "-50% ", style: TextStyle(fontSize: 30,color: Colors.red),

                          children: [
                            WidgetSpan(

                                child:Row(
                                  children: [
                                    Text('\u{20B9}',style: TextStyle(color: Colors.black)),
                                    Text( '1,999',style: TextStyle(fontSize: 30,color: Colors.black)),

                                  ],
                                ) ,
                            ),
                          ]
                          ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(" M.R.P. :\u{20B9}${3999}",style: TextStyle(
                        decoration: TextDecoration.lineThrough
                    ),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(children: [
                      Text("FREE delivery"),
                      Text("Wednesday,19 July.",style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Text("Order within "),

                    ],),
                    Row(
                      children: [
                        Text("23 hrs 39 mins. ",style: TextStyle(
                            color: Colors.green
                        ),),
                        Text("Details",style: TextStyle(
                            color: Colors.blueAccent
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_pin,size: 20),
                  ),
                  Text("Deliver to Navinesh - Coimbatore 641004",style: TextStyle(color:Colors.blue),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("In stock",style: TextStyle(color: Colors.green,
                  fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed:(){}, child: Text("Add to cart",style: TextStyle(
                  color: Colors.black
                ),),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                  onPressed:(){}, child: Text("Buy now",style: TextStyle(
                    color: Colors.black
                ),),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
