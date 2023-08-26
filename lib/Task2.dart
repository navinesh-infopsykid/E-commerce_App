import 'package:flutter/material.dart';
import 'package:testtt/color.dart';


class visible extends StatefulWidget {
  const visible({Key? key}) : super(key: key);

  @override
  State<visible> createState() => _visibleState();
}

class _visibleState extends State<visible> {
  bool _isShow = false;
  bool isTextFieldEnabled = true;
  Color color = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Visibility(
              visible: _isShow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Container(
                   height: 100,
                   width: 200,
                   color: Colors.red,
                 )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              onPressed: () {
                setState(
                      () {
                    _isShow = !_isShow;

                  },
                );
              },
              child: Text(
                _isShow ? 'okay' : 'next',
                style: heading
              ),
            ),
            Container(
              width: 300,
              height: 300,
              color: color, //value of color which we will change by pressing buttons
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        ElevatedButton(
          child: Text("Red"),
          onPressed: () {
            setState(() {
              color = Colors.red;
            });
          },
        ),
        ElevatedButton(
          child: Text("Green"),
          onPressed: () {
            setState(() {
              color = Colors.green;
            });
          },
        ),
        ElevatedButton(
          child: Text("Blue"),
          onPressed: () {
            setState(() {
              color = Colors.blue;
            });
          },)
          ],
        ),
      ])),
    );
  }
}
