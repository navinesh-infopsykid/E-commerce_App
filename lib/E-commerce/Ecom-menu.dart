import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'Ecom-Search.dart';
import 'Ecom.dart';

import 'Ecom-product.dart';

class ecommenu extends StatefulWidget {
  const ecommenu({super.key});

  @override
  State<ecommenu> createState() => _ecommenuState();
}

class _ecommenuState extends State<ecommenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CloseButton(
          color: Colors.black,),
        backgroundColor: Colors.white,
        title: Text("Brand",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const ecommain()),
                        (Route<dynamic>route) => false,
                  );
                },
                child: Icon(Icons.home_outlined,color: Colors.black,size: 26,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, PageTransition(
                    duration: Duration(milliseconds: 400),
                    type: PageTransitionType.rightToLeftWithFade,
                    child: ecomsearch(),
                    isIos: true,
                  ),);
                },
                child: Icon(Icons.search,color: Colors.black,size: 26,)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 200,
              child: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Shop by Category",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)

                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(context, PageTransition(
                      //     duration: Duration(milliseconds: 400),
                      //     type: PageTransitionType.leftToRightWithFade,
                      //     child: ecomproduct(),
                      //     isIos: true,
                      //   ),);
                      // },
                      child: ListTile(
                        leading: Icon(Icons.man),
                        title: Text("Men"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(context, PageTransition(
                      //     duration: Duration(milliseconds: 400),
                      //     type: PageTransitionType.leftToRightWithFade,
                      //     child: ecomproduct(),
                      //     isIos: true,
                      //   ),);
                      // },
                      child: ListTile(
                        leading: Icon(Icons.woman),
                        title: Text("Women"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(context, PageTransition(
                      //     duration: Duration(milliseconds: 400),
                      //     type: PageTransitionType.leftToRightWithFade,
                      //     child: ecomproduct(),
                      //     isIos: true,
                      //   ),);
                      // },
                      child: ListTile(
                        leading: Icon(Icons.toys_outlined),
                        title: Text("Kids"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(context, PageTransition(
                      //     duration: Duration(milliseconds: 400),
                      //     type: PageTransitionType.leftToRightWithFade,
                      //     child: ecomproduct(),
                      //     isIos: true,
                      //   ),);
                      // },
                      child: ListTile(
                        leading: Icon(Icons.watch),
                        title: Text("Accessories"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(context, PageTransition(
                      //     duration: Duration(milliseconds: 400),
                      //     type: PageTransitionType.leftToRightWithFade,
                      //     child: ecomproduct(),
                      //     isIos: true,
                      //   ),);
                      // },
                      child: ListTile(
                        leading: Icon(Icons.home_work),
                        title: Text("Home & Kitchen"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(context, PageTransition(
                      //     duration: Duration(milliseconds: 400),
                      //     type: PageTransitionType.leftToRightWithFade,
                      //     child: ecomproduct(),
                      //     isIos: true,
                      //   ),);
                      // },
                      child: ListTile(
                        leading: Icon(Icons.face),
                        title: Text("Beauty"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(context, PageTransition(
                      //     duration: Duration(milliseconds: 400),
                      //     type: PageTransitionType.leftToRightWithFade,
                      //     child: ecomproduct(),
                      //     isIos: true,
                      //   ),);
                      // },
                      child: ListTile(
                        leading: Icon(Icons.baby_changing_station_sharp),
                        title: Text("Kids"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
