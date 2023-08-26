import 'package:flutter/material.dart';
import 'dart:math';


class dass extends StatefulWidget {
  const dass({super.key});

  @override
  State<dass> createState() => _dassState();
}

class _dassState extends State<dass> {
String check = "";
  bool val = false;
TextEditingController ctrl0 = TextEditingController();
  TextEditingController ctrl = TextEditingController();
  TextEditingController ctrl1 = TextEditingController();
  TextEditingController ctrl2 = TextEditingController();
  TextEditingController ctrl3 = TextEditingController();
TextEditingController ctrl4 = TextEditingController();
TextEditingController ctrl5 = TextEditingController();
TextEditingController ctrl6 = TextEditingController();
 int se = 0 ;
 int cnt=0;
  List a =[ ];
  List b =[ ];
String res = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("List Tasks"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    cnt=int.parse(ctrl0.text);
                  });

                }, child: Text("Count")),
                SizedBox(width: 10,),
                Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(controller: ctrl0,)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  var se = int.parse(ctrl.text);
                  if (se%7==0){
                    check="divisble by seven";
                  }else {
                    check="is not divisble by seven";
                  }
                  _showSimpleDialog();
                });
              }, child: Text("Check")),
              SizedBox(width: 10,),
              Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey
                  ),

                  child: TextFormField(controller: ctrl,)),
              SizedBox(width: 10,),
              FloatingActionButton(onPressed: (){
                setState(() {
                  if(a.length<cnt){
                    a.add(int.parse(ctrl.text));
                    ctrl.clear();
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Value cannot be added")));
                  }

                });
              },child: Icon(Icons.add),)

            ],
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.cyan,
            height: 300,
            width: 400,
            child: ListView.builder(
                itemCount: a.length,
                itemBuilder: (BuildContext con,index)
                {
                  return Container(
                    height: 30,
                    width: 100,
                    color: Colors.cyan,
                    child: Text(a[index].toString()),
                  );
                }
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {

                    var as= a.reduce((value, element) => value > element ? value : element);
                  ctrl1.text = as.toString();
                  print(as);
                  //   b.add(ctrl1.text);
                  });

                }, child: Text("max")),
                SizedBox(width: 10,),
                Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(controller: ctrl1,)),
                SizedBox(width: 100,),
                ElevatedButton(onPressed: (){
                  setState(() {

                    var as= a.reduce((value, element) => value < element ? value : element);
                    ctrl2.text = as.toString();
                    //   b.add(ctrl1.text);
                  });

                }, child: Text("min")),
                SizedBox(width: 10,),
                Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(controller: ctrl2,)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,bottom: 5),
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    a.sort();
                    ctrl4.text = a.toString();
                    print(a);
                    //   b.add(ctrl1.text);
                  });

                }, child: Text("Ascending ")),
                SizedBox(width: 10,),
                Container(
                    height: 40,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(controller: ctrl4,)),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,bottom: 5),
            child: Row(
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {

                    a.sort((b, c) => c.compareTo(b));
                    ctrl5.text = a.toString();
                    //   b.add(ctrl1.text);
                  });

                }, child: Text("Descending")),
                SizedBox(width: 10,),
                Container(
                    height: 40,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(controller: ctrl5,)),
              ],
            ),
          ),

        Row(
          children: [
            SizedBox(width: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
                b = a.where((e) => e > 10).toList();
                print(b);
                ctrl3.text = b.toString();
              });
            }, child: Text("Greater than 10")),
            SizedBox(width: 10,),
            Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(controller: ctrl3,)),
          ],
        ),
SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  var sum = a.reduce((a, b) => a + b);
                  ctrl6.text = sum.toString();

                });
              }, child: Text("Total Sum")),
              SizedBox(width: 10,),
              Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.red.shade200,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextFormField(controller: ctrl6,)),
            ],
          ),


        ],
      ),
    );
  }
Future<void> _showSimpleDialog() async {
  await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
            title: Expanded(
              child: Container(
                height: 100,
                width: 300,
                child: Expanded(
                  child: Text("The number is $check",maxLines: 4,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
            )
        );
      });

}
}
// class listtt extends StatefulWidget {
//   const listtt({super.key});
//
//   @override
//   State<listtt> createState() => _listttState();
// }
//
// class _listttState extends State<listtt> {
//
//   bool selected = false;
//
//   List<String> text = [];
//   List<String> txt = [];
//   List<String> tt = [];
//   TextEditingController _con = TextEditingController();
//
//   String a = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: 300,
//         width: 300,
//         decoration: BoxDecoration(color: Colors.white12),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             TextFormField(
//               controller: _con,
//
//             ),
//             TextButton(
//               style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
//               onPressed: () {
//                 setState(() {
//                   if(_con.text.length>0){
//                     text.add(_con.text);
//                     _con.clear();
//                   } else{
//                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                       content: Text("Text is empty"),
//                     ));
//                   }
//                 });
//               },
//               child: Text("add"),
//             ),
//             Text(text.isNotEmpty?text.toString():""),
//             ElevatedButton(onPressed: (){
//               setState(() {
//                 text.sort();
//                 txt=text;
//
//               });
//             }, child: Text("Sort")),
//
//             ElevatedButton(onPressed: (){
//               setState(() {
//                 List aa=[];
//                 var dd = aa.reduce((value, element) => value > element ? value : element);
//                 tt=dd;
//               });
//
//             },
//              child: Text("min")),
//             Text("$tt"),
//
//           ],
//         ),
//       ),
//     );
//   }
//  void mini(){
//
//
//
//