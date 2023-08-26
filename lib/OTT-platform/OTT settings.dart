import 'package:flutter/material.dart';

import 'OTT down.dart';
import 'OTT info.dart';
import 'OTT login.dart';
class settingott extends StatefulWidget {
  const settingott({super.key});

  @override
  State<settingott> createState() => _settingottState();
}

class _settingottState extends State<settingott> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          children: [
            Text("Help and settings",style: TextStyle(color: Colors.white),),

          ],
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const infott()));
                },
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Account Settings"),
                  trailing: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const infott()));
                      },
                      child: Icon(Icons.arrow_forward_ios)),
                ),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.download_sharp),
                title: Text("Downloads"),
                trailing: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const downott()));
                    },
                    child: Icon(Icons.arrow_forward_ios)),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("App Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.lock_open_rounded),
                title: Text("Parental Controls"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.contact_support_outlined),
                title: Text("Help and Support"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Divider(thickness: 2),
            SizedBox(height: 80,),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 110,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: (){
                          {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 500,
                                  color: Colors.black,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const Text(
                                          'Are you Sure ?!',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 100,),
                                            ElevatedButton(
                                              style: ElevatedButton
                                                  .styleFrom(
                                                  backgroundColor: Colors
                                                      .white),
                                              child: const Text('Close',
                                                style: TextStyle(
                                                    color: Colors.black),),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                            SizedBox(width: 20,),
                                            ElevatedButton(
                                              style: ElevatedButton
                                                  .styleFrom(
                                                  backgroundColor: Colors
                                                      .white),
                                              onPressed: (){
                                              Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(builder: (context) => const loginott()),
                                                    (Route<dynamic>route) => false,
                                              );
                                            },child: const Text('log out',
                                              style: TextStyle(
                                                  color: Colors.black),),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        }, child: Row(
                          children: [
                            Text("Log out",style: TextStyle(color: Colors.purple.shade300),),
                            Icon(Icons.logout_sharp,color: Colors.purple.shade300,)
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


