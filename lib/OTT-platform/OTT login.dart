import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'package:testtt/starfield.dart';
import 'package:testtt/theme.dart';
import 'package:lit_starfield/lit_starfield.dart';


import 'OTT forget.dart';
import 'OTT.dart';
class loginott extends StatefulWidget {
  const loginott({Key? key}) : super(key: key);

  @override
  State<loginott> createState() => _loginottState();
}

class _loginottState extends State<loginott> {
  final myc = GlobalKey<FormState>();
  bool passwordVisible=true;
  final mycc = TextEditingController();



  @override
  Widget build(BuildContext context)
  {
    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child)
    {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.logo_dev),
          centerTitle: true,
          backgroundColor:   Theme.of(context).buttonTheme.colorScheme?.primary,
          title: Text("Zeravideo"),
          actions: [
            IconButton(
                icon: Icon(themeNotifier.isDark
                    ? Icons.nightlight_round
                    : Icons.wb_sunny,),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                })
          ],
        ),
        body: Stack(
          children: [
            LitStarfield(),
            Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Form(

              key: myc,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Sign in", style: TextStyle(color: Colors
                              .white, fontSize: 30,
                              fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 200, bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (
                                context) => const forgetott()));
                          },
                          child: Text(
                            "Forgot password ?", textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.lightBlue),),
                        ),
                      ),
                    ],
                  ),

                  Center(
                    child: Container(
                      height: 60,
                      width: 340,
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your email",
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
                  Center(
                    child: Container(
                      height: 60,
                      width: 340,
                      child: TextFormField(
                        obscureText: passwordVisible,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter your Password",
                          hintStyle: TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.primary),
                          suffixIcon: IconButton(
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),color: Colors.grey,
                            onPressed: () {
                              setState(
                                    () {
                                  passwordVisible = !passwordVisible;
                                },
                              );
                            },
                          ),
                          border: OutlineInputBorder(
                          ),

                        ),
                        // validator: (val) {
                        //   if (val == null || val.isEmpty) {
                        //     return 'Enter valid password';
                        //   }
                        // },

                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0, right: 60),
                    child: Container(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple.shade200,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )),
                          onPressed: () {
                            if (myc.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("ok valid")));
                              Navigator.push(
                                context,
                                PageTransition(
                                  duration: Duration(milliseconds: 400),
                                  type: PageTransitionType.rightToLeftWithFade,
                                  child: const OTT(),
                                  isIos: true,
                                ),
                              );
                            }
                          },
                          child: Text("Sign in", style: TextStyle(
                              fontSize: 18, color: Colors.black),)),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      width: 400,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0, top: 20),
                            child: RichText(
                                text: TextSpan(
                                    style: TextStyle(color: Colors.redAccent),
                                    //style for all textspan
                                    children: [
                                      TextSpan(text: "By signing in you agree to the ",
                                          style:  TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.primary)),
                                      TextSpan(text: "Zeravideo Terms of Use ",
                                          style: TextStyle(color: Colors.purple),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
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
                                                            'Terms and Conditions',
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 30),),
                                                          Padding(
                                                            padding: const EdgeInsets.all(
                                                                8.0),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .redAccent),
                                                                //style for all textspan
                                                                children: [
                                                                  TextSpan(
                                                                      text: "PLEASE READ THE FOLLOWING TERMS AND CONDITIONS CAREFULLY BEFORE YOU"
                                                                          "SUBSCRIBE TO OTT APP BROUGHT BY UNIFI. THESE TERMS AND CONDITIONS ARE TO BE"
                                                                          'READ TOGETHER WITH THE TERMS AND CONDITIONS FOR UNIFI HOME (AND ANY OTHER'
                                                                          ' RELATED TERMS AND CONDITIONS). THIS GENERAL TERMS AND CONDITIONS MUST BE READ'
                                                                          ' TOGETHER WITH THE FAQ FOR OTT APP. BY SUBSCRIBING TO THE UNIFI OTT APP, YOU ARE'
                                                                          'DEEMED TO HAVE READ, UNDERSTOOD AND ACCEPTED TO BE BOUND BY THE TERMS AND'
                                                                          'CONDITIONS BELOW AND ANY OTHER RELATED TERMS AND CONDITIONS ',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white)),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
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
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            }),
                                      TextSpan(
                                          text: " and License agreements which can be found in the main website.",
                                          style:  TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.primary)),
                                    ]
                                )
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0, top: 20),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.redAccent),
                                //style for all textspan
                                children: [
                                  TextSpan(
                                      text: "Zera membership is required to watch Zera-eligible titles.",
                                      style: TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.primary)),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50.0, top: 20, bottom: 50),
                            child: Row(
                              children: [
                                SizedBox(width: 25,),
                                Icon(Icons.copyright, color: Colors.grey,
                                  size: 20,
                                  weight: 10,),
                                Text(" 2002 to 2023, Zera.com, Inc or its Affiliates ",
                                    style:  TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.tertiary)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),

            ),
          ),
          ]
        ),
      );
    });
  }
}
