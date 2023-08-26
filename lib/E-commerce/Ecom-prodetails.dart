import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:page_transition/page_transition.dart';
import 'Ecom-Bag.dart';
import 'Ecom-Search.dart';
import 'Ecom-Wishlist.dart';
import 'Ecom-product.dart';

class ecomprodetails extends StatefulWidget {
  const ecomprodetails({super.key});

  @override
  State<ecomprodetails> createState() => _ecomprodetailsState();
}

class _ecomprodetailsState extends State<ecomprodetails> {

  String dropdownvalue = 'Size M';

  // List of items in our dropdown menu
  var items = [
    'Size S',
    'Size M',
    'Size L',
    'Size XL',
    'Size XXL',
  ];
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(
                      duration: Duration(milliseconds: 400),
                      type: PageTransitionType.leftToRightWithFade,
                      child: const ecomsearch(),
                      isIos: true,
                    ),);
                  },
                  child: Icon(Icons.search,color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(
                      duration: Duration(milliseconds: 400),
                      type: PageTransitionType.leftToRightWithFade,
                      child: const ecomwish(),
                      isIos: true,
                    ),);
                  },
                  child: Icon(Icons.favorite_border,color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(
                      duration: Duration(milliseconds: 400),
                      type: PageTransitionType.leftToRightWithFade,
                      child: const ecombag(),
                      isIos: true,
                    ),);
                  },
                  child: Icon(Icons.shopping_bag_outlined,color: Colors.black,)),
            ),
          ],
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
                      height: 500,
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
                            image: AssetImage("assets/images/M5.jpg"),
                          ),
                        ),
                      );
                    }
                ),
                Positioned(bottom:12,right:50,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, PageTransition(
                          duration: Duration(milliseconds: 400),
                          type: PageTransitionType.leftToRightWithFade,
                          child: const ecomproduct(),
                          isIos: true,
                        ),);
                      },
                      child: Column(
                        children: [
                          Icon(Icons.fiber_smart_record_rounded),
                          Text("Similar")
                        ],
                      ),
                    ) ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                height: 130,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(" Zore Store  ",style: TextStyle(
                            color: Colors.black,fontSize: 20
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
                                  itemSize: 17.0,
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
                                Text(" |45")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Zore Men's Trending wear",textAlign: TextAlign.left,),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan( style: TextStyle(fontSize: 30,color: Colors.green),

                                  children: [
                                    WidgetSpan(

                                      child:Row(
                                        children: [
                                          Text('\u{20B9}',style: TextStyle(color: Colors.black,fontSize: 20)),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text( '1,699',style: TextStyle(fontSize: 30,color: Colors.black)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(" M.R.P. :\u{20B9}${3999}",style: TextStyle(
                                                decoration: TextDecoration.lineThrough
                                            ),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text("50% off", style: TextStyle(color: Colors.green)),
                                          )
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
                  ],
                ),

              ),
            ),
            Divider(thickness: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 5),
              child: Container(
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("COLOR", style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                    )),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(children: [
                            Text("Black"),
                            SizedBox(height: 5,),
                            CircleAvatar(
                              child: CircleAvatar(backgroundColor: Colors.black),
                              backgroundColor: Colors.grey,radius: 24,),
                          ],),
                          SizedBox(width: 20,),
                          Column(children: [
                            Text("Red"),
                            SizedBox(height: 5,),
                            CircleAvatar(
                              child: CircleAvatar(backgroundColor: Colors.red),
                              backgroundColor: Colors.grey,radius: 24,),
                          ],),
                          SizedBox(width: 20,),
                          Column(children: [
                            Text("Blue"),
                            SizedBox(height: 5,),
                            CircleAvatar(
                              child: CircleAvatar(backgroundColor: Colors.blue),
                              backgroundColor: Colors.grey,radius: 24,),
                          ],)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(thickness: 8,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("SIZE", style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          child: DropdownButton(
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),

                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(thickness: 8,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Delivery Details",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("Check Delivery Date ",style: TextStyle(color:Colors.blueAccent,fontSize: 16),)
                  ],
                ),
              ),
            ),
            Divider(thickness: 8,),
          ],
        ),
      ),
      bottomNavigationBar: 
        Theme( data: Theme.of(context).copyWith(
          primaryColor: Colors.black
      ),
        child: Container(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.white54),
                          onPressed: (){
                            {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 200,
                                    color: Colors.black,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const Text(
                                            'Share to',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 50,),
                                              ElevatedButton(
                                                style: ElevatedButton
                                                    .styleFrom(
                                                    backgroundColor: Colors
                                                        .white),
                                                child: Container(
                                                    height: 50,
                                                    width: 50,
                                                    child: Image.asset("assets/images/goog.png")),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              ),
                                              SizedBox(width: 20,),
                                              ElevatedButton(
                                                style: ElevatedButton
                                                    .styleFrom(
                                                    backgroundColor: Colors
                                                        .white),
                                                onPressed: (){},child: const Text('log out',
                                                style: TextStyle(
                                                    color: Colors.black),),
                                              )
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }
                          }, child: Icon(Icons.ios_share_sharp,color: Colors.black,))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.white54),
                          onPressed: (){}, child: Icon(Icons.favorite_border,color: Colors.black,))),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 50,
                      width: 280,
                      child: ElevatedButton(

                          onPressed: (){}, child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                          Text("  Add to Bag",style: TextStyle(fontSize: 18),),
                        ],
                      ))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
