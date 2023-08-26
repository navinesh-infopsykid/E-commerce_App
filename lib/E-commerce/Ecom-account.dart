import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'Ecom-Details.dart';
import 'Ecom-Orders.dart';
import 'Ecom-signin.dart';
class ecomaccnt extends StatefulWidget {
  const ecomaccnt({super.key});

  @override
  State<ecomaccnt> createState() => _ecomaccntState();
}

class _ecomaccntState extends State<ecomaccnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Account",style: TextStyle(color: Colors.black),),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(thickness: 1,color: Colors.white24,),
            Card(
              elevation: 100,
              child: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 10),
                            child: Icon(Icons.account_circle_rounded,size: 100,)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Navinesh ", style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4.0),
                              child: Text("mamamamanana@gmail.com"),
                            ),

                            Text("7010676573",
                              style: TextStyle(fontSize: 14),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 60,left: 30),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const ecomdetails()));
                        }, child: Text("Edit")),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(thickness: 1,color: Colors.white24,),
            Card(
              elevation: 100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(
                          duration: Duration(milliseconds: 400),
                          type: PageTransitionType.leftToRightWithFade,
                          child: ecomorders(),
                          isIos: true,
                        ),);
                      },
                      child: ListTile(
                        title: Text("Orders"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Customer Care"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Invite Friends & earn"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1,color: Colors.white24,),
            Card(
              elevation: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("TOHI Wallet"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Saved Cards"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Coupon Quest"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("My Rewards"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Address"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Notifications"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 1,color: Colors.white24,),
            Card(
              elevation: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Return Creation Demo"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("How to Return"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Terms & Conditions"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Returns & Refund Policy"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Fees and Payments"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,),
                    child: ListTile(
                      title: Text("Join Our Team"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 6.0,bottom: 10),
              child: Container(
                height: 35 ,
                width: 300,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: (){
                      {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              color: Colors.black,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const Text(
                                      'Are you Sure ?!',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 100,),
                                        ElevatedButton(
                                          style: ElevatedButton
                                              .styleFrom(
                                              backgroundColor: Colors
                                                  .white),
                                          child: const Text('Close',
                                            style: TextStyle(
                                                color: Colors.black),),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        ),
                                        SizedBox(width: 20,),
                                        ElevatedButton(
                                          style: ElevatedButton
                                              .styleFrom(
                                              backgroundColor: Colors
                                                  .white),
                                          onPressed: (){
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(content: Text("Logged out")));
                                              Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(builder: (context) => const ecomsignin()),
                                                    (Route<dynamic>route) => false,
                                              );

                                          },child: const Text('log out',
                                          style: TextStyle(
                                              color: Colors.black),),
                                        )
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
                    }, child: Center(child: Text("Log out",style: TextStyle(color: Colors.black),))),
              ),
            ),

            Container(height: 60,color: Colors.white60,
              child: Center(child: Text("Version 9.11.0")),)
          ],
        ),
      ),
    );
  }
}
