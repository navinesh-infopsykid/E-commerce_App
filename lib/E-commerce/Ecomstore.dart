import 'package:animated_background/animated_background.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '../color.dart';
import 'Ecom-Search.dart';
import 'Ecom-more.dart';
import 'Ecom-notify.dart';
import 'Ecom-product.dart';
import 'package:testtt/theme.dart';

import 'Ecom-menu.dart';

class ecomstores extends StatefulWidget {
  const ecomstores({super.key});

  @override
  State<ecomstores> createState() => _ecomstoresState();
}


class _ecomstoresState extends State<ecomstores>
{

  int currentindex= 0;
  @override
  Widget build(BuildContext context)
  {
    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child)
    {
      return DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
          [
            // The flexible app bar with the tabs
            SliverAppBar(
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.logo_dev, size: 20,),
                  ),
                  GestureDetector(
                    onTap: (){
                      {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 300,
                              color: Colors.redAccent,
                              child: Center(
                                child: Column(
                                  children: [
                                    Text("Join the membership",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 20,),
                                    Text("""By join you have numerous benefits that
you will be getting and those are worth it""",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                                   Spacer(),
                                    ElevatedButton(onPressed: (){}, child: Text("Join",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                                    SizedBox(height: 20),
                                  ],
                                )
                              ),
                            );
                          },
                        );
                      }
                    },
                    child: Text("""Become
Insider >""", style: TextStyle( color:icons,fontSize: 12),),
                  ),
                  Spacer(flex: 6),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(
                          duration: Duration(milliseconds: 400),
                          type: PageTransitionType.leftToRightWithFade,
                          child: ecomsearch(),
                          isIos: true,
                        ),);
                      },
                      child: Icon(Icons.search,color: icons)),
                  Spacer(flex: 1,),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(
                          duration: Duration(milliseconds: 400),
                          type: PageTransitionType.leftToRightWithFade,
                          child: ecomnotify(),
                          isIos: true,
                        ),);
                      },
                      child: Icon(Icons.notifications,color: icons)),
                  Spacer(flex: 1,),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(
                          duration: Duration(milliseconds: 400),
                          type: PageTransitionType.leftToRightWithFade,
                          child: ecommenu(),
                          isIos: true,
                        ),);
                      },
                      child: Icon(Icons.menu,color: icons)),

                ],
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  height: 50,
                  color: Colors.white,
                ),
              ),
              expandedHeight: 100,
              pinned: true,

              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent),
                  labelColor: Colors.black,

                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.cyan,
                  indicatorWeight: 2,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  tabs: [
                    Tab(
                      child: Container(

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.redAccent, width: 2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("MEN"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.redAccent, width: 2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("WOMEN"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.redAccent, width: 2)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("KIDS"),
                        ),
                      ),
                    ),
                  ]),
            )
          ],
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                            height: 330,
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
                                currentindex = index;
                              });
                            }
                        ),
                        itemCount: gmale.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) {
                          return Container(
                            height: 100,
                            width: 450,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.black,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(gmale[itemIndex].mgimage),
                                ),
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

                          dotsCount: gmale.length,
                          position: currentindex.toInt(),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecommore(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "CRAZY DEALS FOR MEN",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecommore(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "DAILY FITS",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecommore(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "COUNTRY NEEDS",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(child: Text("ONE STOP SHOP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 450,
                      width: double.infinity,
                      child: IgnorePointer(
                        child: GridView.count(
                            crossAxisCount: 3,
                            children: List.generate(9, (index){
                              return Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/black.jpg"),fit: BoxFit.fill
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black38.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                        shape: BoxShape.circle,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text("Genre name",style: TextStyle(fontSize: 15),),
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
              ),//this is for men
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                            height: 280,
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
                                currentindex = index;
                              });
                            }
                        ),
                        itemCount: gfemale.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) {
                          return Container(
                            height: 100,
                            width: 450,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.black,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(gfemale[itemIndex].fgimage),
                                ),
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

                          dotsCount: gfemale.length,
                          position: currentindex.toInt(),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecommore(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "CRAZY DEALS FOR WOMEN",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecomproduct(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "DAILY FITS",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecommore(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "COUNTRY NEEDS",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(child: Text("ONE STOP SHOP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 450,
                      width: double.infinity,
                      child: IgnorePointer(
                        child: GridView.count(
                            crossAxisCount: 3,
                            children: List.generate(9, (index){
                              return Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,

                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/black.jpg"),fit: BoxFit.fill
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black38.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                        shape: BoxShape.circle,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text("Genre name",style: TextStyle(fontSize: 15),),
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
              ),//this is for women
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                            height: 300,
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
                                currentindex = index;
                              });
                            }
                        ),
                        itemCount: kids.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) {
                          return Container(
                            height: 100,
                            width: 450,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.black,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(kids[itemIndex].kimage),
                                ),
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

                          dotsCount: kids.length,
                          position: currentindex.toInt(),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecomproduct(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "CRAZY DEALS FOR KIDS",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecommore(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "DAILY FITS",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRightWithFade,
                              child: const ecomproduct(),
                              isIos: true,
                            ),);
                          },
                          child: Center(
                            child: Text(
                                "COUNTRY NEEDS",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: 5,
                          itemBuilder: (BuildContext con, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const ecomproduct()));
                              },
                              child: SizedBox(
                                height: 300,
                                width: 170,
                                child: Card(
                                  elevation: 9,
                                  child: Container(
                                    height: 200,
                                    width: 150,
                                    child: Column(
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
                                                image: AssetImage(
                                                    "assets/images/black.jpg"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text("STARTING @199 ", style: sub,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(child: Text("ONE STOP SHOP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 450,
                      width: double.infinity,
                      child: IgnorePointer(
                        child: GridView.count(
                            crossAxisCount: 3,
                            children: List.generate(9, (index){
                              return Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 115,
                                        width: 120,
                                        child: Image.asset("assets/images/black.jpg",fit: BoxFit.fill,)),
                                    Text("Genre name",style: TextStyle(fontSize: 15),),

                                  ],
                                ),
                              );
                            })
                        ),
                      ),
                    ),
                  ],
                ),
              ),//this is for kids
            ],
          ),
        ),
      );;
    });
  }
}
