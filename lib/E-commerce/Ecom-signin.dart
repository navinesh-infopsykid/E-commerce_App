import 'package:flutter/material.dart';
import 'Ecom-account.dart';
import 'Ecom.dart';

class ecomsignin extends StatefulWidget {
  const ecomsignin({super.key});

  @override
  State<ecomsignin> createState() => _ecomsigninState();
}

class _ecomsigninState extends State<ecomsignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Account",style: TextStyle(color: Colors.black),),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 20,top: 10),
                    child: Icon(Icons.account_circle_rounded,size: 90,)
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(onPressed: (){
                            {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: 500,
                                    color: Colors.black,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const Text(
                                            'Sign up / Join',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),),
                                          SizedBox(height: 40,),
                                          Center(
                                            child: Container(
                                              height: 60,
                                              width: 340,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  hintText: "Enter your email/mobile number",
                                                  hintStyle: TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.primary),
                                                  border: OutlineInputBorder(),

                                                ),
                                                // validator: (value) {
                                                //   print(value);
                                                //   if (value!.isEmpty) {
                                                //     return "Please Enter Email";
                                                //   } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                                //     return "Please Enter a Valid Email";
                                                //   }
                                                //   return null;
                                                // },
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20,),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 100,),
                                              Container(
                                                height: 40,
                                                width: 200,
                                                child: ElevatedButton(
                                                  style: ElevatedButton
                                                      .styleFrom(
                                                      backgroundColor: Colors
                                                          .white),
                                                  onPressed: (){
                                                    Navigator.pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => const ecommain()),
                                                          (Route<dynamic>route) => false,
                                                    );
                                                  },child: const Text('Continue',
                                                  style: TextStyle(
                                                      color: Colors.black),),
                                                ),
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
                          }, child: Text("Sign in / Join",style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.w900
                          ),))),
                    ),
                  )
                ],
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Customer Care"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Invite Friends & earn"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Coupon Quest"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Notifications"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Return Creation Demo"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("How to Return"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Terms & Conditions"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Returns & Refund Policy"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Fees and Payments"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text("Join Our Team"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 10,),
            Container(height: 60,color: Colors.white60,
              child: Center(child: Text("Version 9.11.0")),)
          ],
        ),
      ),
    );
  }
}
