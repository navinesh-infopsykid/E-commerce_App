import 'package:flutter/material.dart';


class RefreshIndicatorExample extends StatefulWidget {
  @override
  _RefreshIndicatorExampleState createState() => _RefreshIndicatorExampleState();
}

class _RefreshIndicatorExampleState extends State<RefreshIndicatorExample> {
  List<String> items = List.generate(10, (index) => 'Item $index');

  Future<void> _refreshData() async {
    // Simulate a delay for data fetching
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      items = List.generate(10, (index) => 'Refreshed Item $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pull to Refresh Example'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
