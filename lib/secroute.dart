import 'package:flutter/material.dart';
import 'package:testtt/Spotify.dart';
class Secondroute extends StatelessWidget {
  const Secondroute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text("Menu"),
        backgroundColor: Colors.cyan.shade100,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Report",textAlign: TextAlign.left,style: TextStyle(fontSize: 20),),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListTile(
             shape: RoundedRectangleBorder(side: BorderSide(width: 2)),
             leading: CircleAvatar(child: Icon(Icons.person),),
             title: Text("Report 1"),
             trailing: Icon(Icons.arrow_forward),
           ),
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(side: BorderSide(width: 2)),
              leading: CircleAvatar(child: Icon(Icons.person),),
              title: Text("Report 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Text("Help",style: TextStyle(fontSize: 20),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: RoundedRectangleBorder(side: BorderSide(width: 2)),
              leading: CircleAvatar(child: Icon(Icons.person),),
              title: Text("Login"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
