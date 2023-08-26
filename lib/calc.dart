import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:testtt/check.dart';
import 'package:testtt/home.dart';

class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  bool _isShow = false;
   late int principal,interest,years,months;
   late int amount,gst;
   late double cost;
   late double SI;
   bool incl = false;

   TextEditingController ctrl = TextEditingController();
   TextEditingController amt = TextEditingController();
   TextEditingController cos = TextEditingController();
   TextEditingController cosinc = TextEditingController();
   TextEditingController net = TextEditingController();
   TextEditingController netinc = TextEditingController();
   TextEditingController gs = TextEditingController();
   TextEditingController ppl = TextEditingController();
   TextEditingController irst = TextEditingController();
   TextEditingController year = TextEditingController();
   TextEditingController month = TextEditingController();
   TextEditingController simple = TextEditingController();
   TextEditingController simplem = TextEditingController();
   TextEditingController total = TextEditingController();

  List c =[ ];
   List lis =[ ];
  int? selectedOption;
  final controll = PageController(
    initialPage: 0,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text("Calc Tasks",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: PageView(
        controller: controll,
        children: [
          SingleChildScrollView(
            child: Container(color: Colors.yellow.shade100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("GST CALCULATOR"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RadioListTile<int>(
                        title: const Text('Exclusive'),
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (int? value) {
                          setState(() {
                            _isShow = true;
                            selectedOption = value;
                            print("Selected Option: $selectedOption");
                          });
                        },
                      ),
                      SizedBox(width: 10,),
                      RadioListTile<int>(
                        title: const Text('Inclusive'),
                        value: 2,
                        groupValue: selectedOption,
                        onChanged: (int? value) {
                          setState(() {
                            _isShow = false;
                            selectedOption = value;
                            print("Selected Option: $selectedOption");
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 60,),

                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          SizedBox(height: 50,),
                          Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade50,
                                  border: Border.all(color: Colors.blueAccent,width: 3),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextFormField(controller: amt,
                                decoration: InputDecoration(
                                    hintText: "Amount"
                                ),

                              )),
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          SizedBox(height: 50,),

                          Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.red.shade50,
                                  border: Border.all(color: Colors.blueAccent,width: 3),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: TextFormField(controller: gs,
                              decoration: InputDecoration(
                                hintText: "GST"
                              ),
                              )),
                        ],),
                      ),
                    ],
                  ),
                  Divider(thickness: 10,),
                  // ElevatedButton(onPressed: (){
                  //   setState(() {
                  //     incl=!incl;
                  //   });
                  // },
                  //     child: Text("Incl",style:
                  //     TextStyle(color: Colors.black),)),

                  // Row(children: [
                  //   SizedBox(width: 100,),
                  //   ElevatedButton(onPressed: (){
                  //     setState(() {
                  //       amount=int.parse(amt.text);
                  //       gst=int.parse(gs.text);
                  //       cost=(amount*gst)/100;
                  //       cos.text=cost.toString();
                  //
                  //     });
                  //
                  //   }, child: Text("Gst amount",style: TextStyle(color: Colors.black),)),
                  //   SizedBox(width: 48,),
                  //
                  //   Container(
                  //       height: 40,
                  //       width: 70,
                  //       decoration: BoxDecoration(
                  //           color: Colors.red.shade200,
                  //           borderRadius: BorderRadius.circular(10)
                  //       ),
                  //       child: TextFormField(controller: cos,)),
                  // ],),//
                  // Divider(thickness: 10,),
                  //
                  //
                  // Row(children: [
                  //   SizedBox(width: 100,),
                  //
                  //   ElevatedButton(onPressed: (){
                  //     setState(() {
                  //       var tot=cost+amount;
                  //       net.text=tot.toString();
                  //
                  //     });
                  //
                  //   }, child: Text("Net amt",style: TextStyle(color: Colors.black),)),
                  //   SizedBox(width: 65,),
                  //   Container(
                  //       height: 40,
                  //       width: 70,
                  //       decoration: BoxDecoration(
                  //           color: Colors.red.shade200,
                  //           borderRadius: BorderRadius.circular(10)
                  //       ),
                  //       child: TextFormField(controller: net,)),
                  //
                  // ],),
                  // Divider(thickness: 10,),
                  Visibility(
                    visible: _isShow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,

                          child: Column(
                            children: [
                              Row(children: [
                                SizedBox(width: 100,),
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    amount=int.parse(amt.text);
                                    gst=int.parse(gs.text);
                                    cost=(amount*gst)/100;
                                    cos.text=cost.toString();

                                  });

                                }, child: Text("Gst amount",style: TextStyle(color: Colors.black),)),
                                SizedBox(width: 48,),

                                Container(
                                    height: 40,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.red.shade200,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: TextFormField(controller: cos,)),
                              ],),//
                              Divider(thickness: 10,),

                              Row(children: [
                                SizedBox(width: 100,),
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    var tot=cost+amount;
                                    net.text=tot.toString();

                                  });

                                }, child: Text("Net amt",style: TextStyle(color: Colors.black),)),
                                SizedBox(width: 65,),
                                Container(
                                    height: 40,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.red.shade200,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: TextFormField(controller: net,)),

                              ],),
                              Divider(thickness: 10,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: !_isShow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,

                          child: Column(
                            children: [
                              Row(children: [
                                SizedBox(width: 100,),
                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    amount=int.parse(amt.text);
                                    gst=int.parse(gs.text);
                                    cost=(amount*gst)/(100+gst);
                                    cosinc.text=cost.toString();

                                  });

                                }, child: Text("Gst amount inc",style: TextStyle(color: Colors.black),)),
                                SizedBox(width: 48,),
                                Container(
                                    height: 40,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.red.shade200,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: TextFormField(controller: cosinc,)),
                              ],),
                              Divider(thickness: 10,),
                              Row(children: [
                                SizedBox(width: 100,),

                                ElevatedButton(onPressed: (){
                                  setState(() {
                                    var tot=amount-cost;
                                    netinc.text=tot.toString();

                                  });

                                }, child: Text("Net amt inc",style: TextStyle(color: Colors.black),)),
                                SizedBox(width: 65,),
                                Container(
                                    height: 40,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.red.shade200,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: TextFormField(controller: netinc,)),

                              ],),
                              Divider(thickness: 10,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        amt.clear();
                        net.clear();
                        gs.clear();
                        cos.clear();
                        cosinc.clear();
                        netinc.clear();


                      });

                    }, child: Text("Clear",style: TextStyle(color: Colors.black),)),
                  ),
                ],
              ),),
          ),
          Container(
            child: Column(
            children: [
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

                    lis.add(int.parse(ctrl.text));
                    ctrl.clear();

                });
              },child: Icon(Icons.add),),
              SizedBox(width: 10,),
              Container(
                color: Colors.greenAccent,
                height: 300,
                width: 400,
                child: ListView.builder(
                    itemCount: lis.length,
                    itemBuilder: (BuildContext con,index)
                    {
                      return Container(
                        height: 30,
                        width: 100,
                        child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, PageTransition(
                                duration: Duration(milliseconds: 400),
                                type: PageTransitionType.leftToRightWithFade,
                                child: other(lis[index]),
                                isIos: true,
                              ),);
                            },
                            child: Text(lis[index].toString(),style: TextStyle(
                              color: Colors.black,fontSize: 20
                            ),)),
                      );
                    }
                ),
              ),

            ],
          ),),//navigation to a page
          Container(color: Colors.blue.shade100,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 60,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(height: 50,),
                      Text("Principal",style: TextStyle(color: Colors.black),),
                      SizedBox(height: 10,),
                      Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              border: Border.all(color: Colors.blueAccent,width: 3),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextFormField(controller: ppl,)),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(height: 50,),
                       Text("Interst",style: TextStyle(color: Colors.black),),
                      SizedBox(height: 10,),
                      Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              border: Border.all(color: Colors.blueAccent,width: 3),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextFormField(controller: irst,)),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(height: 50,),
                      Text("Years",style: TextStyle(color: Colors.black),),
                      SizedBox(height: 10,),
                      Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              border: Border.all(color: Colors.blueAccent,width: 3),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextFormField(controller: year,)),

                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(height: 50,),
                      Text("Months",style: TextStyle(color: Colors.black),),
                      SizedBox(height: 10,),
                      Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red.shade50,
                              border: Border.all(color: Colors.blueAccent,width: 3),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextFormField(controller: month,)),

                    ],),
                  ),
                ],
              ),
              Divider(thickness: 10,),
              Row(children: [
                SizedBox(width: 100,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    principal=int.parse(ppl.text);
                    interest=int.parse(irst.text);
                    years=int.parse(year.text);
                    SI=(principal*interest*years)/100;
                    simple.text=SI.toString();

                  });

                }, child: Text("SI calc for yr",style: TextStyle(color: Colors.black),)),
                SizedBox(width: 48,),
                Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(controller: simple,)),
              ],),
              Divider(thickness: 10,),
              Row(children: [
                SizedBox(width: 100,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    principal=int.parse(ppl.text);
                    interest=int.parse(irst.text);
                    months=int.parse(month.text);
                    SI=(principal*interest*months)/(12*100);
                    simplem.text=SI.toString();

                  });

                }, child: Text("SI calc for mon",style: TextStyle(color: Colors.black),)),
                SizedBox(width: 32,),
                Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(controller: simplem,)),
              ],),
              Divider(thickness: 10,),
              Row(children: [
                SizedBox(width: 100,),

                ElevatedButton(onPressed: (){
                  setState(() {
                    var tot=SI+principal;
                    total.text=tot.toString();

                  });

                }, child: Text("Total amt",style: TextStyle(color: Colors.black),)),
                SizedBox(width: 65,),
                Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextFormField(controller: total,)),

              ],),
              Divider(thickness: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    ppl.clear();
                    total.clear();
                    irst.clear();
                    month.clear();
                    year.clear();
                    simple.clear();
                    simplem.clear();

                  });

                }, child: Text("Clear",style: TextStyle(color: Colors.black),)),
              ),
            ],
          ),),//Simple Interst
          //GST calc
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.black ,

              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          child: Text(m,style: TextStyle(
                              fontSize: 50,fontWeight: FontWeight.w400,color: Colors.white),),
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Text(txt,style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w400),),
                    ),
                  ),
                  Row(
                    children: [
                      numbutton("⋀"),
                      numbutton("√"),
                      numbutton("."),
                      numbutton("B"),

                    ],
                  ),
                  Row(
                    children: [
                      numbutton("7"),
                      numbutton("8"),
                      numbutton("9"),
                      numbutton("x"),
                    ],
                  ),
                  Row(
                    children: [
                      numbutton("4"),
                      numbutton("5"),
                      numbutton("6"),
                      numbutton("-"),
                    ],
                  ),
                  Row(
                    children: [
                      numbutton("1"),
                      numbutton("2"),
                      numbutton("3"),
                      numbutton("+"),
                    ],
                  ),
                  Row(
                    children: [
                      numbutton("C"),
                      numbutton("0"),
                      numbutton("="),
                      numbutton("/"),

                    ],
                  ),
                ],
              ),
            ),
          ),//Calculator


          
        ]
      ),
    );
  }
  Widget numbutton(String v){
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: OutlinedButton(onPressed: ()=> btn(v),
              child: Text(v,style: TextStyle(fontSize: 45),)),
        ));
  }
  String op="";
  String m="";
  String txt = "";
  String res = "";
 int a = 0; int b=0;
 int s=0;
 List B=[];
 int index=0;

  void btn(String bt){
    if(bt == 'C'){
      res="";
      txt='';
      m="";
      a=0;
      b=0;

    }else if(bt=='⋀'){
      a=int.parse(txt);
      res=(a * a).toString();
    }
    else if(bt =='+' ||
        bt =='-' ||
        bt =='x' ||
        bt =='/')
      {
        a=int.parse(txt);
        res="";
        op=bt;
        m=txt+op;
        // res=txt+bt;
      }else if(bt=='√'){
      a=int.parse(txt);
      res =Math.sqrt(a).toString();

    }else if (bt=='B'){
      // B.add(txt);
      // res=B.removeLast();
      a = txt.length;
      var ba=txt.substring(0,a-1);


      res=ba.toString();
    }
    else if (bt=='='){
      b=int.parse(txt);
      if(op=='+'){
        res=(a + b).toString();
      }
      if(op=='-'){
        res=(a - b).toString();
      }
      if(op=='x'){
        res=(a * b).toString();
      }
      if(op=='/'){
        res=(a / b).toString();

      }
    }else{
      res=txt+bt;
      B.add(txt);
      index=B.length;
      m=txt+bt;
    }
    setState(() {
      txt=res;

    });
  }
}

Widget Simpleint(p,r,y){
 var si=(p*r*y)/100;
 return Container(
   height: 100,
   width: 200,
   color: Colors.red,
   child: Text("Interest $si",style: TextStyle(color: Colors.black,fontSize: 30),),
 );

}

