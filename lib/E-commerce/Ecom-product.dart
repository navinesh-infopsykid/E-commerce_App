import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'Ecom-prodetails.dart';

class ecomproduct extends StatefulWidget {
  const ecomproduct({super.key});

  @override
  State<ecomproduct> createState() => _ecomproductState();
}

class _ecomproductState extends State<ecomproduct> {
  bool like=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,),
        backgroundColor: Colors.white,
        title: Text("Product",style: TextStyle(color: Colors.black),),

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
                        childAspectRatio: 1.6/ 2.5,
                        crossAxisSpacing: 11,
                        mainAxisSpacing: 8),
                    itemCount: 10,
                    itemBuilder: (BuildContext con,index)
                    {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRightWithFade,
                            child: ecomprodetails(),
                            isIos: true,
                          ),);
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
                                    child: Image.asset("assets/images/black.jpg",fit: BoxFit.fill,)),
                                ListTile(leading: Text("Product name"),
                                  trailing: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          like= !like;
                                        });
                                      },
                                      child: Icon(Icons.favorite,color: like==true ? Colors.red:Colors.grey,)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,bottom: 10),
                                  child: Text("Product description have been clearly mentioned in these lines",maxLines: 2,style: TextStyle(fontSize: 10),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('\u{20B9}${2999}',style: TextStyle(
                                          decoration: TextDecoration.lineThrough
                                      ),),
                                      SizedBox(width: 10,),
                                      Text('\u{20B9}${699}',),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
