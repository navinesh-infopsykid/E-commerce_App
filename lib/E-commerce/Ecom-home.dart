import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../color.dart';
import 'Ecom-Search.dart';
import 'Ecom-menu.dart';


import 'Ecom-notify.dart';
import 'Ecom-product.dart';

class ecomhomes extends StatefulWidget {
  const ecomhomes({super.key});

  @override
  State<ecomhomes> createState() => _ecomhomesState();
}

class _ecomhomesState extends State<ecomhomes> {
  final GlobalKey<ScaffoldState>_Key=GlobalKey();
  int currentindex= 0;
  int currindex=0;
  int cur=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _Key,
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // GestureDetector(
              //     onTap: () {
              //       _Key.currentState!.openDrawer();
              //       // Navigator.push(context, PageTransition(
              //       //   duration: Duration(milliseconds: 400),
              //       //   type: PageTransitionType.leftToRightWithFade,
              //       //   child: ecommenu(),
              //       //   isIos: true,
              //       // ),);
              //     },
              //     child: Icon(Icons.menu,color: Colors.black,size: 27,)),
              // IconButton(onPressed: (){
              //   _Key.currentState!.openDrawer();
              // }, icon: Icon(Icons.menu,color: Colors.black,size: 27,)),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Text("Zore",style: TextStyle(
                    color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(
                          duration: Duration(milliseconds: 400),
                          type: PageTransitionType.theme,
                          child: ecomsearch(),
                          isIos: true,
                        ),);
                      },
                      child: Icon(Icons.search,color: Colors.black,size: 27,)),
                  SizedBox(width: 20,),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(
                          duration: Duration(milliseconds: 400),
                          type: PageTransitionType.leftToRightWithFade,
                          child: ecomnotify(),
                          isIos: true,
                        ),);
                      },
                      child: Icon(Icons.notifications,color: Colors.black,size: 27,)),
                ],
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CarouselSlider.builder(
                options: CarouselOptions(
                    height: 550,
                    aspectRatio: 16 / 9,
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
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentindex = index;
                      });
                    }
                ),

                itemCount: male.length,
                itemBuilder: (BuildContext context, int itemIndex,
                    int pageViewIndex) {
                  return Container(
                    height: 100,
                    width: 400,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(male[itemIndex].mimage)),
                        ),
                      ),
                  );

                }
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotsIndicator(
                  decorator: DotsDecorator(
                    size: Size(25,4),
                    activeSize: Size(28.0, 9.0),
                    activeColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),

                  dotsCount: male.length,
                  position: currentindex.toInt(),
                ),
              ],
            ),

            CarouselSlider.builder(
                options: CarouselOptions(
                    height: 500,
                    aspectRatio: 16 / 9,
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
                    onPageChanged: (index, reason) {
                      setState(() {
                        currindex = index;
                      });
                    }
                ),

                itemCount: female.length,
                itemBuilder: (BuildContext context, int itemIndex,
                    int pageViewIndex) {
                  return Container(
                    height: 100,
                    width: 400,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(female[itemIndex].fimage)),
                      ),
                    ),
                  );

                }
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotsIndicator(
                  decorator: DotsDecorator(
                    size: Size(25,4),
                    activeSize: Size(28.0, 9.0),
                    activeColor: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                  dotsCount: female.length,
                  position: currindex.toInt(),
                ),
              ],
            ),

            SizedBox(height: 50,),
            Center(child: Text("NEW ARRIVALS",style: TextStyle(fontWeight: FontWeight.bold),)),
            SizedBox(height: 50,),
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              child: IgnorePointer(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 2.1 / 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                          ),
                      itemCount: gridmale.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GridTile(child: Image.asset(gridmale[index].gridmimage,fit: BoxFit.fill,));
                      }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(child: Text("STYLES FOR EVERY MOOD",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 50,),
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              child: IgnorePointer(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2.4 / 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: gridfemale.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GridTile(child: Image.asset(gridfemale[index].gridfimage,fit: BoxFit.fill,));
                      }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(child: Text("THE PERFECT ADD ONS",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 50,),
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: IgnorePointer(
                child: GridView.count(crossAxisCount: 3,
                    physics: null,
                    children: List.generate(9, (index){
                      return Container(
                        child: Column(
                          children: [
                            Container(
                                height: 110,
                                width: 110,
                              decoration: BoxDecoration(

                                // image: DecorationImage(
                                //     image: AssetImage("assets/images/black.jpg"),fit: BoxFit.fill
                                //),
                                color: cool [index].ht,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black38.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],

                              ),
                                ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Genre name")
                            ),
                          ],
                        ),
                      );
                    })
                ),
              ),
            ),


          ],
        ),

      ),
      drawer: Drawer(
        width: 350,
        backgroundColor: Colors.white60,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 200,
                child: Container(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                        Center(child: Text("Menu",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),))

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 200,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRightWithFade,
                            child: ecomproduct(),
                            isIos: true,
                          ),);
                        },
                        child: ListTile(
                          leading: Icon(Icons.man),
                          title: Text("Men"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Divider(thickness: 2),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRightWithFade,
                            child: ecomproduct(),
                            isIos: true,
                          ),);
                        },
                        child: ListTile(
                          leading: Icon(Icons.woman),
                          title: Text("Women"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Divider(thickness: 2),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRightWithFade,
                            child: ecomproduct(),
                            isIos: true,
                          ),);
                        },
                        child: ListTile(
                          leading: Icon(Icons.toys_outlined),
                          title: Text("Kids"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Divider(thickness: 2),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRightWithFade,
                            child: ecomproduct(),
                            isIos: true,
                          ),);
                        },
                        child: ListTile(
                          leading: Icon(Icons.watch),
                          title: Text("Accessories"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Divider(thickness: 2),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRightWithFade,
                            child: ecomproduct(),
                            isIos: true,
                          ),);
                        },
                        child: ListTile(
                          leading: Icon(Icons.home_work),
                          title: Text("Home & Kitchen"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Divider(thickness: 2),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRightWithFade,
                            child: ecomproduct(),
                            isIos: true,
                          ),);
                        },
                        child: ListTile(
                          leading: Icon(Icons.face),
                          title: Text("Beauty"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                    Divider(thickness: 2),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRightWithFade,
                            child: ecomproduct(),
                            isIos: true,
                          ),);
                        },
                        child: ListTile(
                          leading: Icon(Icons.baby_changing_station_sharp),
                          title: Text("Kids"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
