import 'dart:convert';


import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:testtt/model/taskapi3a.dart';

class Addcateg extends StatefulWidget {
  const Addcateg({Key? key}) : super(key: key);

  @override
  State<Addcateg> createState() => _AddcategState();
}

class _AddcategState extends State<Addcateg> {

  final _formKey = GlobalKey<FormState>();
  Future<http.Response>? _future;

  TextEditingController _box1 = TextEditingController();
  TextEditingController _box2 = TextEditingController();
  TextEditingController _box3 = TextEditingController();
  TextEditingController _box4 = TextEditingController();
  TextEditingController _box5 = TextEditingController();
  TextEditingController _box6 = TextEditingController();

  late String categid;
  late String categ;
  late String descr;
  late String delon;
  late String remrem;
  late String createby;

  Future<http.Response>AddCategory(String categid , String categ, String descr,String delon,String remrem,String createby ) async{
    return await http.post(
      Uri.parse("http://catodotest.elevadosoftwares.com/Category/InsertCategory"),
      headers: <String , String>{
        'Content-Type' : 'application/json; charset=utf-8',
      },
      body: jsonEncode(<String , String>{

        "categoryId": categid,
        "category": categ,
        "description": descr,
        "deletedOn": delon,
        "removedRemarks": remrem,
        "createdBy": createby,
      }
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Client Details",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: _future == null ? buildCol() : Respdata(),
          ),
        ],
      ),
    );
  }
  Form buildCol(){
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 300,
              child: TextFormField(

                // keyboardType: TextInputType.name,
                // validator: (value){
                //   if(value==null||value.isEmpty){
                //     return "Can't be Empty";
                //   }
                //   else if(!value.isValidName){
                //     return "Enter Valid Name";
                //   }
                //   return null;
                // },
                controller: _box1,
                decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    hintText: "categoryId"
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 300,
              child: TextFormField(
                // keyboardType: TextInputType.phone,
                // validator: (value){
                //   if(value==null||value.isEmpty){
                //     return "Can't be Empty";
                //   }
                //   else if(!value.isValidPhone){
                //     return "Enter Valid Phone";
                //   }
                //   return null;
                // },
                controller: _box2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "category"
                ),
              ),
            ),
          ),
          Center(
            child: Container(

              height: 100,
              width: 300,
              child: TextFormField(
                // keyboardType: TextInputType.streetAddress,
                // validator: (value){
                //   if(value==null||value.isEmpty){
                //     return "Can't be Empty";
                //   }
                //   return null;
                // },
                controller: _box3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "description"
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 300,
              child: TextFormField(
                // keyboardType: TextInputType.emailAddress,
                // validator: (value){
                //   if(value==null||value.isEmpty){
                //     return "Can't be Empty";
                //   }
                //   else if(!value.isValidEmail){
                //     return "Enter Website";
                //   }
                //   return null;
                // },
                controller: _box4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "deletedOn"
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 300,
              child: TextFormField(
                // keyboardType: TextInputType.emailAddress,
                // validator: (value){
                //   if(value==null||value.isEmpty){
                //     return "Can't be Empty";
                //   }
                //   else if(!value.isValidEmail){
                //     return "Enter Valid Email";
                //   }
                //   return null;
                // },
                controller: _box5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "removedRemarks"
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 300,
              child: TextFormField(
                controller: _box6,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "createdBy"
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){

              setState(() {
                _future = AddCategory(_box1.text, _box2.text, _box3.text,
                    _box4.text, _box5.text,_box6.text);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Added Successfully Data')),
              );
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Discateg()));

          }, child: Text("Add")),
        ],
      ),
    );
  }

  FutureBuilder<http.Response>Respdata(){
    return FutureBuilder<http.Response>(
        future: _future,
        builder: (context ,snapshot ){
          if(snapshot.hasData){
            return Text(snapshot.data!.statusCode.toString()  == "200" ? "Added Successfully" : "Error " );
          }
          else if(snapshot.hasError){
            return Text('${snapshot.error}');
          }
          return CircularProgressIndicator();


        });
  }


}

// extension ExtString on String {
//   bool get isValidEmail {
//     final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
//     return emailRegExp.hasMatch(this);
//   }
//
//   bool get isValidName{
//     final nameRegExp = new RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
//     return nameRegExp.hasMatch(this);
//   }
//
//   bool get isValidPassword{
//     final passwordRegExp =
//     RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
//     return passwordRegExp.hasMatch(this);
//   }
//
//
//   bool get isValidPhone{
//     final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
//     return phoneRegExp.hasMatch(this);
//   }
//
// }