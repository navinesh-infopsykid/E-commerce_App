import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
class ecombag extends StatefulWidget {
  const ecombag({super.key});

  @override
  State<ecombag> createState() => _ecombagState();
}

class _ecombagState extends State<ecombag> {
  String dropdownvalue = 'Size M';
  bool like=false;

  // List of items in our dropdown menu
  var items = [
    'Size S',
    'Size M',
    'Size L',
    'Size XL',
    'Size XXL',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,),
        backgroundColor: Colors.white,
        title: Text("Shopping Bag",style: TextStyle(
        color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(thickness: 8,),
            ListTile(leading: Text("Check delivery time & servises"),
            trailing: GestureDetector(

              child: Text("ENTER PIN CODE",style: TextStyle(
                color: Colors.brown,fontWeight: FontWeight.bold
              ),),
            ),),
            Divider(thickness: 8,),
            ListTile(
              title: Row(
                children: [
                  SizedBox(height : 170,
                      width: 120,
                      child: Image.asset("assets/images/M1.jpg", fit: BoxFit.fill)),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Product name"),
                            SizedBox(width: 130,),
                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    like =!like;
                                  });
                                },
                                child: Icon(Icons.favorite, color: like==true ? Colors.red:Colors.grey,))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,right: 30),
                          child: Text("""Product description have been clearly mentioned
 in these lines""",maxLines: 2,style: TextStyle(fontSize: 10),),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                DropdownButton(
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),

                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 30,
                                  width: 100,
                                  child: InputQty(
                                    showMessageLimit: false,
                                    btnColor1: Colors.green, //color of the increase and decrease icon
                                    maxVal: double.maxFinite, //max val to go
                                    initVal: 1,  //min starting val
                                    onQtyChanged: (val) { //on value changed we may set the value
                                      //setstate could be called
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('\u{20B9}${2999}',style: TextStyle(
                                  decoration: TextDecoration.lineThrough
                              ),),
                              SizedBox(width: 10,),
                              Text('\u{20B9}${699}',style: TextStyle(
                                color: Colors.red
                              ),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2,)

          ],
        ),
      ),
    );
  }
}
