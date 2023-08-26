import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  List<String> text = [];
  TextEditingController _cont = TextEditingController();

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
                    child: Text("Deliver to Navinesh - Coimbatore 6411004"),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: 10,
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
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage("assets/images/1.jpg"),
                              ),
                            ),
                          ),
                          Text("SHOES"),
                        ],
                      )

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
                  autoPlay: true,
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
                    child: Text(itemIndex.toString()),
                  );
                }
            ),
            Container(
              height: 400,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount: 4,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text("ji"),
                    );
                  }),
            ),

            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: 5,
                  itemBuilder: (BuildContext con,index)
                  {
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 200,
                        color: Colors.cyan,
                        child: Text("hi"),
                      ),
                    );
                  }
              ),
            ),




            CarouselSlider.builder(
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 15,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
              {
                return Container(
                  height: 100,
                  width: 300,
                  color: Colors.cyan,
                  child: Text(itemIndex.toString()),
                );
              }
            ),



          ],
        ),
      )

      // Container(
      //   decoration: BoxDecoration(color: Colors.white12),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: <Widget>[
      //       TextFormField(
      //         controller: _cont,
      //
      //       ),
      //       TextButton(
      //         onPressed: () {
      //           setState(() {
      //             if(_cont.text.length>0){
      //               text.add(_cont.text);
      //               _cont.clear();
      //             } else{
      //               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //                 content: Text("Text is empty"),
      //               ));
      //             }
      //           });
      //         },
      //         child: Text("add"),
      //       ),
      //       Text(text.isNotEmpty?text.toString():""),
      //     ],
      //   ),
      // ),
    );
  }
}