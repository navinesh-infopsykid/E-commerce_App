import 'package:flutter/material.dart';


class Samp extends StatefulWidget {
  const Samp({super.key});

  @override
  State<Samp> createState() => _SampState();
}

class _SampState extends State<Samp> {

  String op1="",op2="",selopt="";

  bool clk = false;

  TextEditingController ctrl =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200,),
          TextFormField(controller: ctrl,),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){

               if(clk)
                 {
                   op2+="1";
                   ctrl.text=op2;
                 }
               else
                 {
                   op1+="1";
                   ctrl.text=op1;
                 }

              }, child: Text("1")),
              ElevatedButton(onPressed: (){

                if(clk)
                {
                  op2+="2";
                  ctrl.text=op2;
                }
                else
                {
                  op1+="2";
                  ctrl.text=op1;
                }
              }, child: Text("2")),
              ElevatedButton(onPressed: (){
                ctrl.text="+";
                selopt="+";
                clk= true;


              }, child: Text("+")),
              ElevatedButton(onPressed: (){

                if(selopt=="+")
                  {
                    int a = int.parse(op1);

                    int b = int.parse(op2);

                    int res = a+b;

                    ctrl.text= res.toString();

                  }


              }, child: Text("=")),
            ],
          )
        ],
      ),
    );
  }
}
