import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import 'package:testtt/starfield.dart';
import 'package:testtt/theme.dart';

import 'OTT login.dart';

class forgetott extends StatefulWidget {
  const forgetott({super.key});

  @override
  State<forgetott> createState() => _forgetottState();
}

class _forgetottState extends State<forgetott> {
  final myc = GlobalKey<FormState>();
  bool passwordVisible=true;
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child)
    {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.logo_dev),
          centerTitle: true,
          backgroundColor: Theme
              .of(context)
              .buttonTheme
              .colorScheme
              ?.primary,
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
                height: double.infinity,
                width: double.infinity,
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
                              child: Text("Forgot Password", style: TextStyle(color: Colors
                                  .white, fontSize: 25,
                                  fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,),
                            ),
                          ),
                          SizedBox(height: 30,),
                        ],
                      ),

                      Center(
                        child: Container(
                          height: 60,
                          width: 340,
                          child: TextFormField(
                            obscureText: passwordVisible,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Enter new Password",
                              hintStyle: TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.primary),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
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
                              hintText: "Re-Enter new Password",
                              hintStyle: TextStyle(color: Theme.of(context).buttonTheme.colorScheme?.primary),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
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
                                      SnackBar(content: Text("Password Changed successfully!")));
                                  Navigator.pop(
                                    context,
                                    PageTransition(
                                      duration: Duration(milliseconds: 400),
                                      type: PageTransitionType.leftToRightWithFade,
                                      child: const loginott(),
                                      isIos: true,
                                    ),
                                  );
                                }
                              },
                              child: Text("Continue", style: TextStyle(
                                  fontSize: 18, color: Colors.black),)),
                        ),
                      ),
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
