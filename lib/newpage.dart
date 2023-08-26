import 'package:flutter/material.dart';
import 'package:flutter/src/painting/border_radius.dart';

class ss extends StatelessWidget {
  const ss ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.webp"),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.jpeg"),
                      fit: BoxFit.fill,
                    )
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/3.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                ),
                              Container(
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text("SHOES")),
                              ],
                            ),



                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15) ),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/3.jpg"),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                              Container(
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight:Radius.circular(15) ),
                                  ),
                                  child: Text("SHOES")),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/3.jpg"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 130,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Username",
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                            ),
                            ElevatedButton(onPressed: (){}, child: Text("Next")),
                          ],
                        )

                        ],
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.jpeg"),
                      fit: BoxFit.fill,
                    )
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 170,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/unnamed.png"),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/unnamed.png"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/unnamed.png"),
                                  fit: BoxFit.fill,
                                )
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Text("The quick brown fox jumped over the lazy dog. This containes all alphabets."))
                  ],
                ),
              ),
            )
          ],
        ),
            ),
    );
          
        
      

  }
}
