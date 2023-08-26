import 'dart:math';
import 'package:input_quantity/input_quantity.dart';
import 'package:flutter/material.dart';
import 'package:testtt/Clock.dart';

import 'package:testtt/insta.dart';
import 'package:testtt/pro%20spotify.dart';
import 'package:testtt/splash%20screen.dart';

class newpro extends StatefulWidget {
  const newpro({super.key});

  @override
  State<newpro> createState() => _newproState();
}

class _newproState extends State<newpro> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }


  double _width = 70;
  double _height = 70;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  final control = PageController(
      initialPage: 0,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
       controller: control,
        children: [
          Container(
            color: Colors.blue,
          ),
          Clock(),
          Container(
            child: Column(
              children: [
                SizedBox(height: 100,),
                Center(child: Container(height: 100,width: 100,color: Colors.cyan,)),
                AnimatedOpacity(
                  opacity: opacityLevel,
                  duration: Duration(seconds: 1),
                  child: Container(
                      height: 150,
                      width: 150,
                      child: Image.asset("assets/images/1.jpg")),
                ),
            ElevatedButton(
              onPressed: _changeOpacity,
              child: const Text('Fade Logo'),),
                Center(child: Container(height: 100,width: 100,color: Colors.amber,)),
              ],
            ),
          ),
          Column(
        children: [
          Expanded(
            child: AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
            ),
          ),
          SizedBox(height: 100,)
        ],
      ),
          Container(
            color: Colors.red,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputQty(
                  btnColor1: Colors.green, //color of the increase and decrease icon
                  maxVal: double.maxFinite, //max val to go
                  initVal: 0,  //min starting val
                  onQtyChanged: (val) { //on value changed we may set the value
                    //setstate could be called
                  },
                ),
              ],
            ),
          ),
    ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            // random generator
            final random = Random();

            // random dimension generator
            _width = random.nextInt(500).toDouble();
            _height = random.nextInt(500).toDouble();

            // random color generator
            _color = Color.fromRGBO(
              random.nextInt(300),
              random.nextInt(300),
              random.nextInt(300),
              1,
            );

            // random radius generator
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
    );
  }
}
