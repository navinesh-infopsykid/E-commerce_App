import 'package:flutter/material.dart';

class infott extends StatefulWidget {
  const infott({Key? key}) : super(key: key);

  @override
  State<infott> createState() => _infottState();
}

class _infottState extends State<infott> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Zera video Mobile",style: TextStyle(color: Colors.orange,fontSize: 25),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Plan expires in 10 days",style: TextStyle(fontSize: 15)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: (){}, child: Text("Upgrade",
              style: TextStyle(fontSize: 14),)),

          ),
          Divider(
            color: Colors.white70,thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("+91 9********2",style: TextStyle(fontSize: 18),),
                      Text("Registered Mobile Number",style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.black) ,onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.edit),
                      Text(" Update")
                    ],
                  ))
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  This device",style: TextStyle(fontSize: 18),),
                ),
                ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Iphone/ipad",style: TextStyle(fontSize: 14),),
                      Text("Last used : Today",style: TextStyle(fontSize: 12),),

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("  Other devices",style: TextStyle(fontSize: 18),),
                ),
                ListTile(
                  leading: Icon(Icons.phone_android),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Android/Tablet",style: TextStyle(fontSize: 14),),
                      Text("Last used : Yesterday",style: TextStyle(fontSize: 12),),

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white70),
              onPressed: (){},child: Text("Delete Account",style: TextStyle(color: Colors.red,fontSize: 14),))
            ],
          )
        ],
      ),
    );
  }
}
