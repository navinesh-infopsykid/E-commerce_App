import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ages extends StatefulWidget {
  const ages({super.key});

  @override
  State<ages> createState() => _agesState();
}

class _agesState extends State<ages> {
  String myage="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your age is"),
            SizedBox(height: 10,),
            Text(myage),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ()=>pickDob(), child: Text("Pick you DOB")),
          ],
        ),
      ),
    );
  }
  pickDob(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now()
    ).then((pickedDate) {
      if(pickedDate != null){
        calculateAge(pickedDate);
      }
    });
  }
  calculateAge(DateTime birth){
    DateTime now= DateTime.now();
    Duration age = now.difference(birth);
    int years= age.inDays ~/365;
    int months=(age.inDays % 365) ~/30;
    int days=((age.inDays % 365)%30);
    setState(() {
      myage = "$years years,$months months and $days days";
    });
  }
}
