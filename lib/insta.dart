import 'package:flutter/material.dart';

import 'color.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  get title => "iamnavinesh";


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          // The flexible app bar with the tabs
          SliverAppBar(
            title: Row(
              children: [
                Icon(Icons.arrow_back_ios,size: 20,),
                Text("  akshay_arul"),
                Spacer(flex: 5),
                Icon(Icons.add_box_outlined),
                Spacer(flex: 1),
                Icon(Icons.menu),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
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
                          padding: const EdgeInsets.all(15.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/1.jpg'),
                            radius: 25,
                          ),
                        ),
                        Spacer(flex: 1,),
                        Column(
                          children: [Text("0",style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Posts")],
                        ),
                        Spacer(flex: 1,),
                        Column(
                          children: [Text("382",style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Followers")],
                        ),
                        Spacer(flex: 1,),
                        Column(
                          children: [Text("400",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("Following")],
                        ),
                        Spacer(flex: 1,),
                      ],
                    ) ,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("AKSHAY"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Life is better when we move on"),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/1.jpg'),
                                  radius: 12,
                                ) ,
                                Positioned(left: 20,child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/1.jpg'),
                                  radius: 12,
                                ) ,),
                              ],

                            ),
                          ),
                        ),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Followed by iambainesh,akshayyyy,rokitttt ,iamhaha and 108 others",
                          maxLines: 2,
                          ),
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 4,0),
                          child: Container(
                            height: 30,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade500,
                              border: null,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: TextFormField(

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "    Following",
                                labelStyle: TextStyle(color: Colors.black),
                                suffixIcon: Icon(Icons.arrow_drop_down_outlined,color: Colors.black),

                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 30,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade500,
                                border: null,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: TextFormField(

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: "         Message",
                                labelStyle: TextStyle(color: Colors.black),


                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade500,
                                border: null,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Icon(Icons.supervisor_account_rounded)
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            expandedHeight: 350,
            pinned: true,

            forceElevated: innerBoxIsScrolled,
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_on_outlined)),
              Tab(icon: Icon(Icons.slow_motion_video_sharp)),
              Tab(icon: Icon(Icons.person)),
            ]),
          )
        ],
        body: TabBarView(
          children: [
            Container(
              height: 900,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(

                        crossAxisCount: 3,

                  children: List.generate(li.length, (index) {
                    return Center(
                      child: Image.asset(li[index].image),
                    );
                  }
              ),
                ),
            ),
            ),
            Container(
              height: 900,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(

                  crossAxisCount: 3,

                  children: List.generate(li.length, (index) {
                    return Center(
                      child: Image.asset(li[index].image),
                    );
                  }
                  ),
                ),
              ),
            ),
            Container(
              height: 900,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(

                  crossAxisCount: 3,

                  children: List.generate(li.length, (index) {
                    return Center(
                      child: Image.asset(li[index].image),
                    );
                  }
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
