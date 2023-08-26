import 'package:flutter/material.dart';
import 'Ecom-account.dart';
class ecomdetails extends StatefulWidget {
  const ecomdetails({super.key});

  @override
  State<ecomdetails> createState() => _ecomdetailsState();
}

class _ecomdetailsState extends State<ecomdetails> {
  final controller = TextEditingController();
  bool isTextFieldEnabled = false;
  bool isbut = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        title: Text("Edit Profile",style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 70,),

          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(

              controller: controller,
              enabled: isTextFieldEnabled,
              decoration: InputDecoration(
                labelText: "Your name ",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                suffixIcon: Icon(Icons.done),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              decoration: InputDecoration(
                enabled: isTextFieldEnabled,
                labelText: "Your email ",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                suffixIcon: Icon(Icons.done),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              enabled: isTextFieldEnabled,
              decoration: InputDecoration(
                labelText: "Your mobile number ",

                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                suffixIcon: Icon(Icons.done),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(child: Text("Edit" ),

                onPressed: () {
                  setState(() {
                    isTextFieldEnabled = true;
                  });
                },),
              SizedBox(width: 30,),
              ElevatedButton(child: Text('Update'),
                onPressed: () {
                  setState(() {
                    isTextFieldEnabled = false;
                    Navigator.pop(context,MaterialPageRoute(builder: (context)=> ecomaccnt()));
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Updated Successfully")));
                  });
                },),
            ],
          ),
          SizedBox(height: 20,),


          SizedBox(height: 20,),


        ],
      ),
    );
  }
}
