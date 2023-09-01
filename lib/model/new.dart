import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDropdownPage(),
    );
  }
}

class MyDropdownPage extends StatefulWidget {
  @override
  _MyDropdownPageState createState() => _MyDropdownPageState();
}

class _MyDropdownPageState extends State<MyDropdownPage> {
  String selectedValue = 'Option 1'; // Default selected value

  void _onDropdownChanged(String newValue) {
    setState(() {
      selectedValue = newValue; // Update the selected value
    });

    // Replace the current page with a new instance of the page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) => MyDropdownPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: selectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  selectedValue = newValue!; // Update the selected value
                });

                // Replace the current page with a new instance of the page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => MyDropdownPage()),
                );
              } ,
              items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Selected Value: $selectedValue',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
