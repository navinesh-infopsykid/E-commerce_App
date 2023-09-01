import 'dart:convert';


import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'apitask3a.dart';
class AddDetails extends StatefulWidget {
  const AddDetails({Key? key}) : super(key: key);

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {

  final _formKey = GlobalKey<FormState>();
  Future<http.Response>? _future;

  TextEditingController _box1 = TextEditingController();
  TextEditingController _box2 = TextEditingController();
  TextEditingController _box3 = TextEditingController();
  TextEditingController _box4 = TextEditingController();
  TextEditingController _box5 = TextEditingController();

  late String Name;
  late String Phone;
  late String Address;
  late String Website;
  late String Email;

  Future<http.Response>AddCategory(String Name , String Phone, String Address,String Website,String Email){
    return http.post(
      Uri.parse("http://catodotest.elevadosoftwares.com/Client/InsertClient"),
      headers: <String , String>{
        'Content-Type' : 'application/json; charset=utf-8',
      },
      body: jsonEncode(<String , String>{

        "clientId":"0",
        "clientName":Name,
        "phone":Phone,
        "address":Address,
        "gst":"5767hgj",
        "website":Website,
        "email":Email,
        "contactPerson":"Sangee",
        "phoneNumber":"7894561230",
        "createdBy":"1"

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
                    hintText: "Client Name"
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
                    hintText: "Client phone"
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
                    hintText: "Address"
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
                    hintText: "Website"
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
                    hintText: "Email"
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            if(_formKey.currentState!.validate()){
              setState(() {
                _future = AddCategory(_box1.text, _box2.text, _box3.text,
                    _box4.text, _box5.text);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Added Successfully Data')),
              );
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ClientDis()));
            }
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

extension ExtString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName{
    final nameRegExp = new RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword{
    final passwordRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }


  bool get isValidPhone{
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }

}