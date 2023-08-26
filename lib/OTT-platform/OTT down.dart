import 'package:animated_background/animated_background.dart';
import 'package:animated_background/particles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:testtt/theme.dart';

import 'OTT home.dart';



class downott extends StatefulWidget {
  const downott({super.key});

  @override
  State<downott> createState() => _downottState();
}

class _downottState extends State<downott> with SingleTickerProviderStateMixin

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
  @override
  Widget build(BuildContext context)
  {
    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child)
    {
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
          child: Column(
            children: [
              SizedBox(height: 50,),
              Center(child: Container(
                  height: 200,
                  width: 200,
                  child: Icon(Icons.cloud_download_rounded,
                  size: 150))),
              Text("No Downloads Available", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                    "Explore and Download your favourite movies and shows to watch on the go",
                    textAlign: TextAlign.center, maxLines: 2,
                  )),

              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => const homeott()),
                        );
                      },
                      child: Text(
                        "Go to home", style: TextStyle(fontSize: 18),)),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
