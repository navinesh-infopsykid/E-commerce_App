import 'package:flutter/material.dart';

import 'color.dart';

class spotifyy extends StatefulWidget {
  const spotifyy({super.key});

  @override
  State<spotifyy> createState() => _spotifyyState();
}

class _spotifyyState extends State<spotifyy> {

  final title = '          Latest English Songs';

  ScrollController nnn= ScrollController();
  void controller(){

  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              abc,
              Colors.black,
            ],
              stops: [
                0.5,
                1,

              ]
          ),
        ),
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            controller: nnn,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
            => [
              SliverAppBar(
                snap: false,
                pinned: true,
                floating: false,

                // title: Column(
                //
                //  children: [
                //
                //      Container(
                //        child: Column(
                //          children: [
                //            Text("Latest English Songs",style: TextStyle(
                //                color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10
                //            ),)
                //          ],
                //        ),
                //      ),
                //
                //  ],
                // ),
                flexibleSpace:
                FlexibleSpaceBar(
                    centerTitle: true,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("$title",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ) , //TextStyle
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: Icon(Icons.play_arrow)),
                        )
                      ],
                    ),
                  background: Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,

                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 35,
                                width: 270,
                                decoration: BoxDecoration(
                                  color: Colors.white12,
                                  border: null,
                                ),
                                child: TextFormField(

                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: "Find in playlist",
                                    labelStyle: TextStyle(color: Colors.white),
                                    prefixIcon: Icon(Icons.search,color: Colors.white),

                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.white12,shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3),
                                  )),
                                  onPressed: (){}, child: Text("Sort",style: TextStyle(color: Colors.white),)),
                            )
                          ],
                        ),
                        Center(
                          child: Container(
                            height: 300,
                              width: 300,
                              child: Image.asset("assets/images/color.jpeg")),
                        ),
                        Text("Latest English Hits",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),),//Text,
                        Text("Each .... descriptiom of the page  asn jfj knsue jkshff kxmbv ",style: TextStyle(color: Colors.white30),),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/1.jpg'),
                              radius: 15,
                            ) ,
                            Text("Author name",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.language,color: Colors.white38,),
                            Text(" 108 saves - 1h 51m ",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.add_circle_outline,color: Colors.white,),
                            Icon(Icons.arrow_circle_down,color: Colors.white,),
                            Icon(Icons.more_horiz,color: Colors.white,),
                            Icon(Icons.shuffle_rounded,color: Colors.white,),
                          ],
                        )
                      ],
                    ),
                  )
                   ), //FlexibleSpaceBar
                expandedHeight: 600,
                backgroundColor:  Color(0xff3e0b24),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                  tooltip: 'Back',
                  onPressed: () {},
                ), //IconButton
                 //<Widget>[]
              ),
              //SliverList(delegate: delegate),
              SliverList(

                delegate: SliverChildBuilderDelegate(
                      (context, index) => ListTile(
                    tileColor: (index % 2 == 0) ? Colors.white : Color(0xff921955),
                    title: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(li[index].image)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(li[index].text,style: TextStyle(color: Colors.white),),
                                Text(li[index].txt,style: TextStyle(color: Colors.white,fontSize: 10),),

                              ],
                            ),
                          ),
                          Icon(Icons.more_horiz,color: Colors.white,),
                        ],
                      )
                    ), //Center
                  ), //ListTile
                  childCount: li.length,
                ), //SliverChildBuildDelegate
              )],
            body: Column(
              children: [
              ],
            ),

          ),
        ),
      ),
    );
  }
}
