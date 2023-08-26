import 'package:flutter/material.dart';

class moreott extends StatefulWidget {
  const moreott({Key? key}) : super(key: key);

  @override
  State<moreott> createState() => _moreottState();
}

class _moreottState extends State<moreott> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Latest Releases"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1000,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      mainAxisExtent: 167
                    ),
                    itemCount: 13,
                    itemBuilder: (BuildContext ctx, index) {
                      return Card(
                        elevation: 9,
                        child: Container(
                          height: 100,
                          width: 150,
                          child:Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    // border: null,
                                    // color: Colors.black,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage("assets/images/black.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Card(
//
// child: Container(
// height: 200,
// width: 150,
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// height: 100,
// width: 100,
// alignment: Alignment.center,
// decoration: BoxDecoration(
// image: DecorationImage(
// fit: BoxFit.fill,
// image: AssetImage("assets/images/black.jpg"),
// ),
// color: Colors.amber,
// borderRadius: BorderRadius.circular(15)),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// ),
// ),
// ),
//
// ],
// ),
// ),
// );