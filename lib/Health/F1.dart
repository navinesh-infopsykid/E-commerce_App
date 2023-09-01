import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:testtt/Health/F1pro.dart';

import '../color.dart';



class fruitsapp extends StatefulWidget {
  @override
  State<fruitsapp> createState() => _fruitsappState();
}

class _fruitsappState extends State<fruitsapp> {
  bool like=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fruits'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child:
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: 1.6/ 2.0,
                        crossAxisSpacing: 11,
                        mainAxisSpacing: 8),
                    itemCount: fruitsimg.length,
                    itemBuilder: (BuildContext con,index)
                    {
                      return GestureDetector(
                        // onTap: () {
                        //   Navigator.push(context, PageTransition(
                        //     duration: Duration(milliseconds: 400),
                        //     type: PageTransitionType.leftToRightWithFade,
                        //     child: ecomprodetails(),
                        //     isIos: true,
                        //   ),);
                        // },
                        child: GestureDetector(
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=> frudet(
                              description: fruitsde[index].frud,
                              images: fruitsimg[index].fruu,
                              name: fruitsna[index].fru,
                              benefits: fruitsbe[index].frub,


                            )));
                          },
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 400,
                              width: 220,
                              child: Column(
                                children: [
                                  Container(
                                      height: 200,
                                      width: 400,
                                      child: Image.asset(fruitsimg[index].fruu,fit: BoxFit.fill,)),

                                  ListTile(


                                    title: Center(child: Text(fruitsna[index].fru,style: TextStyle(fontSize: 25),)),

                                    // trailing: GestureDetector(
                                    //
                                    //     onTap: (){
                                    //       setState(() {
                                    //         like= !like;
                                    //       });
                                    //     },
                                    //     child: Icon(Icons.favorite,color: like==true ? Colors.red:Colors.grey,)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      )
    );
  }
}
