// import 'package:flutter/material.dart';
//
// class listfunc extends StatefulWidget {
//   const listfunc({Key? key}) : super(key: key);
//
//   @override
//   State<listfunc> createState() => _listfuncState();
// }
//
// class _listfuncState extends State<listfunc> {
//  List a = [1,3,5,2,6];
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 200,),
//           TextFormField(controller: ctrl,),
//           SizedBox(height: 100,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//
//               ElevatedButton(onPressed: (){
//
//                 if(clk)
//                 {
//                   op2+="2";
//                   ctrl.text=op2;
//                 }
//                 else
//                 {
//                   op1+="2";
//                   ctrl.text=op1;
//                 }
//               }, child: Text("2")),
//               ElevatedButton(onPressed: (){
//                 ctrl.text="+";
//                 selopt="+";
//                 clk= true;
//
//
//               }, child: Text("+")),
//               ElevatedButton(onPressed: (){
//
//                 if(selopt=="+")
//                 {
//                   int a = int.parse(op1);
//
//                   int b = int.parse(op2);
//
//                   int res = a+b;
//
//                   ctrl.text= res.toString();
//
//                 }
//
//
//               }, child: Text("=")),
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
// }
