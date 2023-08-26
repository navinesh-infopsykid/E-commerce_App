import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class lettersum extends StatefulWidget {
  const lettersum({super.key});

  @override
  State<lettersum> createState() => _lettersumState();
}

class _lettersumState extends State<lettersum>
    with SingleTickerProviderStateMixin {
  late AnimationController
  iconController; // make sure u have flutter sdk > 2.12.0 (null safety)
  bool isAnimated = false;
  bool showPlay = true;
  bool shopPause = false;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();// this will create a instance object of a class

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    iconController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    audioPlayer.open(Audio('assets/audio/aa.mp3'),autoStart: true,showNotification: true);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("உயிர்மெய்யெழுத்துகள்",
          style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(child: Icon(CupertinoIcons.backward_fill,color: Colors.black,),onTap: (){
                  audioPlayer.seekBy(Duration(seconds: -10));
                },),
                GestureDetector(
                  onTap: () {
                    AnimateIcon();
                  },
                  child: AnimatedIcon(
                    icon: AnimatedIcons.play_pause,
                    progress: iconController,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
                InkWell(child: Icon(CupertinoIcons.forward_fill,color: Colors.black,),onTap: (){
                  audioPlayer.seekBy(Duration(seconds: 10));
                  audioPlayer.seek(Duration(seconds: 10));
                  audioPlayer.next();
                },),
              ],
            ),
            Container(
              height: 950,
              color: Colors.white54,
              width: MediaQuery.of(context).size.width,
              child: IgnorePointer(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 80,
                        childAspectRatio: 2.1 / 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: mtamlet.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(mtamlet[index].mletter,fit: BoxFit.scaleDown,));
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void AnimateIcon() {
    setState(() {
      isAnimated = !isAnimated;
      if(isAnimated)
      {
        iconController.forward();
        audioPlayer.play();
      }else{
        iconController.reverse();
        audioPlayer.pause();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    iconController.dispose();
    audioPlayer.dispose();
    super.dispose();
  }
}


