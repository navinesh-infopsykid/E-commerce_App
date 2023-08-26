import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testtt/color.dart';

class colours extends StatefulWidget {
  const colours({super.key});

  @override
  State<colours> createState() => _coloursState();
}

class _coloursState extends State<colours> {
  double containerHeight = ht;
  double containerWidth = wt;
  int checkedIndex=0;
  bool giff = false;
  @override
  void initState() {
    super.initState(); //when this route starts, it will execute this code
    Future.delayed(const Duration(seconds: 5), () { //asynchronous delay
      if (this.mounted) { //checks if widget is still active and not disposed
        setState(() { //tells the widget builder to rebuild again because ui has updated
          giff=false; //update the variable declare this under your class so its accessible for both your widget build and initState which is located under widget build{}
        });
      }
    });
  }

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();// this will create a instance object of a class
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,),
        title: Text("Colours",
          style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 600,
                child: RawScrollbar(
                  isAlwaysShown: true,
                  thickness: 14,
                  thumbColor: Colors.black,
                  radius: const Radius.circular(8),
                  crossAxisMargin: 1,
                  child: GridView.builder(
                    itemCount: colorsname.length,
                    itemBuilder: (BuildContext context,int index){

                      return buildadd(index);
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),

                  ),
                ),

              ),
            ),
            Visibility(
                visible: giff,
                child: Container(height: 40,width: 300,
                  decoration:   BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/images/aud.gif"),
                        fit: BoxFit.fill,
                      )
                  ),
                ))
          ],
        ),
      ),
    );
  }


  Widget buildadd(int index ){
    bool checked = index ==checkedIndex;
    return GestureDetector(
      onTap: (){
        setState(() {
          checkedIndex=index;
          giff = true;
          //audioPlayer.open(Audio(audlet[index].aud),showNotification: true);
          Future.delayed(const Duration(seconds: 3), () {
            setState(() {
              giff=false;
            });

          });
        });

      },
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: checked ? cool [index].ht : Colors.white,
            border: Border.all(color: Colors.white54,width: 5),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(spreadRadius: 2)],
          ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(colorsname[index].cname,style: TextStyle(color: checked? Colors.white : Colors.black,fontSize: 25),)),
          )),
    );


  }
}

