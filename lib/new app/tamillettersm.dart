import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:testtt/color.dart';

import '../color.dart';
import '../color.dart';

class lettersm extends StatefulWidget {
  const lettersm({super.key});

  @override
  State<lettersm> createState() => _lettersmState();
}

class _lettersmState extends State<lettersm> {
  double containerHeight = ht;
  double containerWidth = wt;
  int checkedIndex=0;
  var colorr=Colors.green;
  bool giff = false;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();// this will create a instance object of a class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,),
        title: Text("மெய்யெழுத்துகள்",
          style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold),),
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
               height: 650,
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.black12,width: 10),
               ),
               child: RawScrollbar(
                 isAlwaysShown: true,
                 thickness: 14,
                 thumbColor: Colors.grey,
                 radius: const Radius.circular(8),
                 crossAxisMargin: 1,

                 child: GridView.builder(
                   itemCount: meilet.length,
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
            SizedBox(height: 10,),
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
          audioPlayer.open(Audio(audletm[index].audm),showNotification: true);
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
            color: checked ? Colors.black : Colors.white,
            border: Border.all(color: Colors.redAccent,width: 5),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(spreadRadius: 2)],
          ),

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text(meilet[index].mletter,style: TextStyle(color: Colors.red,fontSize: font),)),
          )),
    );


  }

}
