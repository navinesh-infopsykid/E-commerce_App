import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class audiotam extends StatefulWidget {
  const audiotam({super.key});

  @override
  State<audiotam> createState() => _audiotamState();
}

class _audiotamState extends State<audiotam> {


  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();// this will create a instance object of a class



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),

            GestureDetector(
              onTap: (){
                audioPlayer.open(Audio('assets/audio/aa.mp3'),showNotification: true);
              },
                child: Container(height: 50,width: 50,color: Colors.red,))
          ],
        ),
      ),
    );
  }
}
