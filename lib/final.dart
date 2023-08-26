import 'package:flutter/material.dart';
import 'package:flutter/src/material/elevated_button.dart';

class Ha extends StatelessWidget {
  const Ha({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/unnamed.png"),
        ),
        title: Text(
          "GT Academy",
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight:FontWeight.bold ,
          ),),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              child: Center(
                child: Container(
                  height: 200,
                  width: 300,
                  //color: Colors.cyanAccent,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(),

                    borderRadius: BorderRadius.circular(15),
                    shape: BoxShape.rectangle,

                  ),
                  child: Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Login Details"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter your name",
                        prefixIcon: Icon(Icons.person),

                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password",
                        prefixIcon: Icon(Icons.key),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Text("Login")),
                    ),

                  ],

          ),
                ),
              ),
            ),
      ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/colorr.png"),
                fit: BoxFit.fill,
              ),

              shape: BoxShape.rectangle,

            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/unnamed.png")
                  )
                ),
                child:
                Center(child: Text("huhuih"))),



                Column(
                  children: [
                    SizedBox(
                        height:200,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("This is a multiline Paragraph which contains multiple line in it, hence its a multi line para."),
                        )),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(onPressed: (){}, child: Text("Next>")),
                        ),
                      ],
                    )
                  ],
                )

              ],

            ),

          )
  ]
    )
    );
  }
}
