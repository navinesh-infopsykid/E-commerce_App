import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

class spot extends StatelessWidget {
  const spot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/black.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 200,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/spotify.png"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Text("Millions of songs.",
                  style: TextStyle(color: Colors.white),
                  ),
                  Text("Free on Spotify.",
                    style: TextStyle(color: Colors.white),

                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                     height: 40,
                     width: 280,
                     child: ElevatedButton(onPressed: (){},
                         style: ElevatedButton.styleFrom(primary: Colors.green),
                         child: Text("Sign up for free",style: TextStyle(color: Colors.black),)),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Center(
                     child: Container(
                       height: 40,
                       width: 280,
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.white),
                         borderRadius: BorderRadius.circular(30),
                       ),
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                 border: Border.all(),
                                 image: DecorationImage(
                                   image: AssetImage("assets/images/mob.png"),
                                 )
                               ),
                             ),
                           ),

                           Container(
                               alignment: Alignment.center,
                               child: Text("Continue with phone number",style: TextStyle(color: Colors.white),)),

                         ],
                       ),
                     ),
                   ),
                 ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 40,
                        width: 280,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/goog.png"),
                                    )
                                ),
                              ),
                            ),
                            Container(
                                alignment: Alignment.centerRight,
                                child: Text("        Continue with Google",style: TextStyle(color: Colors.white),)),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 40,
                        width: 280,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/faceb.png"),
                                    )
                                ),
                              ),
                            ),
                            Text("        Continue with Facebook",style: TextStyle(color: Colors.white),),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 40,
                        width: 280,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                         // mainAxisAlignment: MainAxisAlignment.,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/apple.png"),
                                    )
                                ),
                              ),
                            ),
                            SizedBox(width: 40,),
                            Text("  Continue with Apple",style: TextStyle(color: Colors.white),),
                    ]
                    ),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: Text("Log in",style: TextStyle(color: Colors.white),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
