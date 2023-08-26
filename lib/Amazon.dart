import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:testtt/secroute.dart';

import 'Spotify.dart';
import 'color.dart';

class amazon extends StatefulWidget {
  const amazon({super.key});

  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {
  int _index= 0 ;


  final pages = [

    spot(),
    Secondroute(),
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
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent.shade200,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.document_scanner),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: ("Search Amazon.in ")
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.cyanAccent.shade100,
                height: 50,
                width: double.infinity,

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.location_pin),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Deliver to Navinesh - Coimbatore 641004"),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,

                    itemCount: lis.length,
                    itemBuilder: (BuildContext con,index)
                    {
                      return  Container(
                          height: 100,
                          width: 100,
                          child:Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(

                                  image: DecorationImage(
                                    image: AssetImage(lis[index].image),
                                  ),
                                ),
                              ),
                              Text(lis[index].text),
                            ],
                          ),

                      );
                    }
                ),
              ),
              CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 180,
                    aspectRatio: 16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.5,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                  {
                    return Container(
                      height: 100,
                      width: 400,
                      color: Colors.cyan,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/5.jpg"),
                          ),
                        ),
                      ),
                    );
                  }
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,

                    itemCount: 5,
                    itemBuilder: (BuildContext con,index)
                    {
                      return  Card(
                        elevation: 9,
                        child: Container(
                          height: 150,
                          width: 150,
                          child:Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                   // border: null,
                                   // color: Colors.black,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/images/3.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              Text("SHOES"),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text("Prime Day is July 15th and 16th | Enjoy early deals and shopping offers",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              Container(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 2 / 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Card(

                          child: Container(
                            height: 250,
                            width: 200,
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: 200,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage("assets/images/4.jpeg"),
                                      ),
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                  ),
                                ),
                                Text("Today's offer"),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),

            ],
          ),
        ),

    );
  }
}
