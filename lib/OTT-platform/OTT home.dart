import 'package:animated_background/animated_background.dart';
import 'package:animated_background/particles.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:testtt/theme.dart';

import '../color.dart';
import 'OTT more.dart';
import 'OTT video.dart';


class homeott extends StatefulWidget {
  const homeott({super.key});

  @override
  State<homeott> createState() => _homeottState();
}

class _homeottState extends State<homeott>
    with SingleTickerProviderStateMixin
{
  ParticleOptions particles = const ParticleOptions(
    baseColor: Colors.purple,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 50,
    spawnMaxRadius: 11.0,
    spawnMaxSpeed: 150.0,
    spawnMinSpeed: 30,
    spawnMinRadius: 3.0,
  );
  int currentindex= 0;
  @override
  Widget build(BuildContext context)
  {
    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child)
    {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.logo_dev_outlined,),
          actions: [
            IconButton(
                icon: Icon(themeNotifier.isDark
                    ? Icons.nightlight_round
                    : Icons.wb_sunny,),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                }),
            SizedBox(
              height: 20,
              width: 110,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    onPressed: () {}, child: Text("Upgrade",
                  style: TextStyle(color: Colors.white, fontSize: 11),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.cast, color: Colors.white70,),
            )
          ],
        ),
        body: AnimatedBackground(
          vsync: this,
          behaviour: RandomParticleBehaviour(options: particles),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 250,
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

                    itemCount: 9,
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
                              image: AssetImage("assets/images/color.jpeg"),
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

                      dotsCount: 9,
                      position: currentindex.toInt(),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(
                          duration: Duration(milliseconds: 400),
                          type: PageTransitionType.leftToRightWithFade,
                          child: const moreott(),
                          isIos: true,
                        ),);
                      },
                      child: Text("New Releases", textAlign: TextAlign.left,
                          style: heading),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 5,
                      itemBuilder: (BuildContext con, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (
                                context) => const video()));
                          },
                          child: Card(
                            color: card,
                            elevation: 9,
                            child: Container(
                              height: 100,
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
                                  Text("Movie name", style: sub,)
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                        "Coming soon on Zeravideo", textAlign: TextAlign.left,
                        style: heading),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 5,
                      itemBuilder: (BuildContext con, index) {
                        return Card(
                          color: card,
                          elevation: 9,
                          child: Container(
                            height: 100,
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
                                Text("Movie name", style: sub,)
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                        "Action", textAlign: TextAlign.left, style: heading),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 5,
                      itemBuilder: (BuildContext con, index) {
                        return Card(
                          color: card,
                          elevation: 9,
                          child: Container(
                            height: 100,
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
                                Text("Movie name", style: sub,)
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                        "Drama", textAlign: TextAlign.left, style: heading),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 5,
                      itemBuilder: (BuildContext con, index) {
                        return Card(
                          color: card,
                          elevation: 9,
                          child: Container(
                            height: 100,
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
                                Text("Movie name", style: sub,)
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Popular Languages", textAlign: TextAlign.left,
                        style: heading),
                  ),
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 5,
                      itemBuilder: (BuildContext con, index) {
                        return Card(
                          color: card,
                          elevation: 9,
                          child: Container(
                            height: 50,
                            width: 150,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 50,
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
                                Text("Languages", style: sub,)
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("Popular Genres", textAlign: TextAlign.left,
                        style: heading),
                  ),
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 5,
                      itemBuilder: (BuildContext con, index) {
                        return Card(
                          color: card,
                          elevation: 9,
                          child: Container(
                            height: 50,
                            width: 150,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    height: 50,
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
                                Text("genre name", style: sub,)
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("ZERA Specials", textAlign: TextAlign.left,
                        style: heading),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 5,
                      itemBuilder: (BuildContext con, index) {
                        return Card(
                          color: card,
                          elevation: 9,
                          child: Container(
                            height: 100,
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
                                Text("Movie name", style: sub,)
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),


              ],
            ),
          ),
        ),

      );
    });
  }
}
