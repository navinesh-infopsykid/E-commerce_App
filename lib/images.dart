import 'dart:ui';

import 'package:flutter/material.dart';

class pic extends StatelessWidget {
  const pic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/3.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 100,sigmaX: 100),
                child: Container(
                  height: 300,
                  width: 300,


                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.2),
                      image: DecorationImage(
                        image: AssetImage("assets/images/1.jpg"),
                        fit: BoxFit.cover,
                      ),
                  ),
                 child: BackdropFilter(
                   filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                   child: Column(
                     children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              image: DecorationImage(
                                image: AssetImage("assets/images/5.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextFormField(
                           decoration: InputDecoration(
                             border: OutlineInputBorder(),
                             hintText: ("Enter name ")
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ElevatedButton(onPressed: (){}, child: Text("Log in")),
                       ),
                     ],

                   ),
                 ),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                image: DecorationImage(
                  image: AssetImage("assets/images/5.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        image: DecorationImage(
                          image: AssetImage("assets/images/2.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              image: DecorationImage(
                                image: AssetImage("assets/images/4.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.2),
                              image: DecorationImage(
                                image: AssetImage("assets/images/4.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.2),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.2),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
