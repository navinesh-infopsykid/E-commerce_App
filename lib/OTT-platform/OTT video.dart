import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:testtt/color.dart';
import 'package:video_player/video_player.dart';

class video extends StatefulWidget {
  const video({Key? key}) : super(key: key);

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {

  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Container(

                  child: FlickVideoPlayer(
                      flickManager: flickManager
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Prince of Persia : Movie name",style: TextStyle(
                fontSize: 30),textAlign: TextAlign.center,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" 2007  "),
                  Icon(Icons.circle,size: 7,),
                  Text(" 2h 7m  "),
                  Icon(Icons.circle,size: 7,),
                  Text(" 4 Languages  "),
                  Icon(Icons.circle,size: 7,),
                  TextButton(onPressed: (){}, child: Text("U/A 7+"))
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 40,
                width: 330,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white70,
                ),onPressed: (){}, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow,color: Colors.black,),
                    Text("   Watch Now",style: TextStyle(color: Colors.black),),
                  ],
                )),
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(" Action "),
                  Text(" | ",style: TextStyle(fontSize: 10),),
                  Text(" Adventure "),
                  Text(" | ",style: TextStyle(fontSize: 10),),
                  Text(" Historical "),
                  Text(" | ",style: TextStyle(fontSize: 10),),
                  Text(" Chase "),
                  Text(" | ",style: TextStyle(fontSize: 10),),
                  Text(" Conspiracy "),
                  Text(" | ",style: TextStyle(fontSize: 10),),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Here the description of the movie is been displayed, this contains a small outline of the movie where it say about the movie",
               ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Icon(Icons.add ),
                      SizedBox(height: 10,),
                      Text("Watchlist")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.ios_share ,size: 23,),
                      SizedBox(height: 10,),
                      Text("Share")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.download_outlined ,size: 25,),
                      SizedBox(height: 10,),
                      Text("Download")
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text("More like this ",textAlign: TextAlign.left,style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 5,
                      itemBuilder: (BuildContext con,index)
                      {
                        return  Card(
                          elevation: 9,
                          child: Container(
                            height: 100,
                            width: 150,
                            child:Column(
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
                                        image: AssetImage("assets/images/black.jpg"),
                                      ),
                                    ),
                                  ),
                                ),
                                Text("Movie name")
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
                      child: Text("Trailers & more ",textAlign: TextAlign.left,style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Container(
                    height: 110,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,

                        itemCount: 5,
                        itemBuilder: (BuildContext con,index)
                        {
                          return  Card(
                            elevation: 9,
                            child: Container(
                              height: 70,
                              width: 150,
                              child:Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      height: 70,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        // border: null,
                                        // color: Colors.black,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage("assets/images/black.jpg"),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text("Movie name")
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),

              ],)

            ],
          ),
        )
    );
  }
}
