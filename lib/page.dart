import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:testtt/home.dart';
import 'package:testtt/secroute.dart';
import 'package:testtt/valid.dart';


class Asd extends StatelessWidget {
  const Asd({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text("Login Page"),
        backgroundColor: Colors.cyan.shade50,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: MyCustomForm(),
      // body: SingleChildScrollView(
      //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 50),
      //   child: Form(
      //     // key: _key,
      //     child: Column(
      //       children: [
      //
      //         SizedBox(height: 50,),
      //         Container(
      //           height: 100,
      //           width: 200,
      //           color: Colors.cyan,
      //         ),
      //         SizedBox(height: 50),
      //
      //         TextFormField(
      //           validator: (value){
      //             if (value == null || value.isEmpty){
      //               return 'Please enter some text';
      //             }
      //             return null;
      //           },
      //           decoration: InputDecoration(
      //             border: OutlineInputBorder(),
      //             hintText: 'Username',
      //             prefixIcon: Icon(Icons.person),
      //           ),
      //         ),
      //
      //         TextFormField(
      //           decoration: InputDecoration(
      //             border: OutlineInputBorder(),
      //             hintText: 'Password',
      //             prefixIcon: Icon(Icons.lock),
      //           ),
      //         ),
      //         ElevatedButton(onPressed: (){
      //           if (_formkey.currentState!.validate()){
      //             ScaffoldMessenger.of(context).showSnackBar(
      //               const SnackBar(content: Text('Processing Data')),
      //             );
      //           }
      //         }, child: Text("Login")),
      //
      //
      //
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Your name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a Password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ),
          ],
        ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:testtt/Amazon.dart';
// import 'package:testtt/OTT.dart';
// import 'package:testtt/navig.dart';
// // import 'package:testtt/secroute.dart';
//
// class loginn extends StatefulWidget {
//   const loginn({super.key});
//
//   @override
//   State<loginn> createState() => _loginnState();
// }
//
// class _loginnState extends State<loginn> {
//   final myc = GlobalKey<FormState>();
//
//   final mycc = TextEditingController();
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         title: Text("Jiravideo"),
//         actions: [Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Icon(Icons.refresh),
//         )],
//       ),
//       body: Form(
//
//         key: myc,
//         child: Column(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Container(
//                   height: 100,
//                   width: 300,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 30,
//                     fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text("Forgot password ?",textAlign: TextAlign.right,
//                     style: TextStyle(color: Colors.lightBlue),),
//                 ),
//               ],
//             ),
//
//             Container(
//               height: 60,
//               width: 340,
//               child: SizedBox(
//                 height: 40,
//                 width: 300,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: "Enter your email",
//
//                     border: OutlineInputBorder(),
//
//                   ),
//                   // validator: (value) {
//                   //   print(value);
//                   //   if (value!.isEmpty) {
//                   //     return "Please Enter Email";
//                   //   } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//                   //     return "Please Enter a Valid Email";
//                   //   }
//                   //   return null;
//                   // },
//                 ),
//               ),
//             ),
//             Center(
//               child: Container(
//                 height: 60,
//                 width: 340,
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: "Enter your Password",
//
//                     border: OutlineInputBorder(
//                     ),
//
//                   ),
//                   // validator: (val) {
//                   //   if (val == null || val.isEmpty) {
//                   //     return 'Enter valid email';
//                   //   }
//                   // },
//
//                 ),
//               ),
//             ),
//             Center(
//               child: Container(height: 50,width: 200,
//               child: Row(
//                 children: [
//                   Icon(Icons.check_box_outline_blank,color: Colors.white70,),
//                   Text("  Show Password",style: TextStyle(color: Colors.white70),),
//                 ],
//               ),
//               ),
//             ),
//             SizedBox(
//               height: 40,
//               width: 200,
//               child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20)
//                       )),
//                   onPressed: () {
//                 if (myc.currentState!.validate()) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text("ok valid")));
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const OTT()),
//                   );
//                 }
//               }, child: Text("Sign in",style: TextStyle(fontSize: 18),)),
//             ),
//             Container(
//               height: 300,
//               width: 360,
//               child: Expanded(
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 50,
//                     ),
//                     RichText(
//                         text: TextSpan(
//                             style: TextStyle(color: Colors.redAccent), //style for all textspan
//                             children: [
//                               TextSpan(text:"By signing in you agree to the ",style: TextStyle(color: Colors.white70)),
//                               TextSpan(text:"Jiravideo Terms of Use ",style: TextStyle(color: Colors.purple),),
//                               TextSpan(text:" and License agreements which can be found in the main website.",
//                                   style: TextStyle(color: Colors.white70)),
//                             ]
//                         )
//                     ),
//                     SizedBox(height: 40,),
//                     RichText(
//                         text: TextSpan(
//                             style: TextStyle(color: Colors.redAccent), //style for all textspan
//                             children: [
//                               TextSpan(text:"Jira membership is required to watch Jira-eligible titles. ",style: TextStyle(color: Colors.white)),
//                             ],
//                         ),
//                     ),
//                     SizedBox(height: 80,),
//                     Row(
//                       children: [
//                         SizedBox(width: 25,),
//                         Icon(Icons.copyright,color: Colors.grey,size: 20,weight: 10,),
//                         Text(" 2002 to 2023, Jira.com, Inc or its Affiliates ",style: TextStyle(
//                           color: Colors.grey
//                         ),),
//                       ],
//                     )
//
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//
//       ),
//     );
//   }
// }