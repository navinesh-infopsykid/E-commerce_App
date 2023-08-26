import 'package:flutter/material.dart';
import 'Ecom-Wishlist.dart';
import 'Ecomstore.dart';
import 'Ecom.dart';

class ecomorders extends StatefulWidget {
  const ecomorders({super.key});

  @override
  State<ecomorders> createState() => _ecomordersState();
}

class _ecomordersState extends State<ecomorders> {
  String? dur;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,),
        backgroundColor: Colors.white,
        title: Text("Orders",style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child:  Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Showing Your Orders",style: TextStyle(fontSize: 20),),
                    SizedBox(width: 150,),
                    Container(
                      height: 30,
                      width: 90,
                      child: ElevatedButton(onPressed: (){
                        {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 300,
                                color: Colors.white54,
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Order Time", style: TextStyle(
                                            fontSize: 19,fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                      Divider(),
                                      RadioListTile(
                                        title: Text("Last six months"),
                                        value: "Last six months",
                                        groupValue: dur,
                                        onChanged: (value){
                                          setState(() {
                                            dur = value.toString();
                                          });
                                        },
                                      ),
                                      RadioListTile(
                                        title: Text("2023"),
                                        value: "2023",
                                        groupValue: dur,
                                        onChanged: (value){
                                          setState(() {
                                            dur = value.toString();
                                          });
                                        },
                                      ),
                                      RadioListTile(
                                        title: Text("2022"),
                                        value: "2022",
                                        groupValue: dur,
                                        onChanged: (value){
                                          setState(() {
                                            dur = value.toString();
                                          });
                                        },
                                      ),
                                      RadioListTile(
                                        title: Text("2021"),
                                        value: "2021",
                                        groupValue: dur,
                                        onChanged: (value){
                                          setState(() {
                                            dur = value.toString();
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      }, child: Row(
                        children: [
                         Icon(Icons.filter_list_sharp),
                          Text("Filters",style: TextStyle(fontSize: 12),),
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text("No Orders Placed",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("You have products in your Wishlist waiting to be yours",style: TextStyle(fontSize: 14),),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(height: 80,width:70,
                      child: Image.asset("assets/images/1.jpg")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(height: 80,width:70,
                          child: Image.asset("assets/images/4.jpeg")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(height: 80,width:70,
                          child: Image.asset("assets/images/1.jpg")),
                    ),


                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const ecommain()),
                            (Route<dynamic>route) => false,
                      );
                    }, child: Text("Continue Shopping")),
                   SizedBox(width: 20,),
                    ElevatedButton(onPressed: (){
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const ecomwish()),
                            (Route<dynamic>route) => false,
                      );
                    }, child: Text("Add from wishlist")),

                  ],
                ),
              ),
              SizedBox(height: 120,),
            ],
          ),
        ),
      ),
    );
  }
}
