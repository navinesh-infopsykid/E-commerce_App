import 'package:animated_background/animated_background.dart';
import 'package:animated_background/particles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:testtt/theme.dart';

import '../color.dart';

class searchott extends StatefulWidget {
  const searchott({super.key});

  @override
  State<searchott> createState() => _searchottState();
}

class _searchottState extends State<searchott>
    with SingleTickerProviderStateMixin

{
  ParticleOptions particles = const ParticleOptions(
    baseColor: Colors.purple,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 30,
    spawnMaxRadius: 15.0,
    spawnMaxSpeed: 100.0,
    spawnMinSpeed: 30,
    spawnMinRadius: 7.0,
  );

  bool light = true;

  @override
  Widget build(BuildContext context)
  {
    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child){
    return Scaffold(

      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(themeNotifier.isDark
                  ? Icons.nightlight_round
                  : Icons.wb_sunny,),
              onPressed: () {
                themeNotifier.isDark
                    ? themeNotifier.isDark = false
                    : themeNotifier.isDark = true;
              })
        ],
      ),
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(options: particles),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "       Movies. shows and more ",
                    hintStyle: TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.tertiary,fontSize: 18),
                    prefixIcon: Icon(Icons.search,color: Colors.white),

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("POPULAR SEARCHES "),
              SizedBox(height: 20,),

              Container(
                height: 1000,
                width: 360,

                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),

                    scrollDirection: Axis.vertical,

                    itemCount: 8,
                    itemBuilder: (BuildContext con,index)
                    {
                      return Card(
                        color: card,
                        elevation: 9,
                        child: Container(
                          height: 90,
                          width: 150,
                          color: Colors.white10,
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 80,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/images/black.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Text("Movie name",style: TextStyle(fontSize: 18),),
                                  Text("Year")
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
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