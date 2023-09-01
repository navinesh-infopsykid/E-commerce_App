import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';



class SlidableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slidable Example'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Slidable(
            actionPane: SlidableDrawerActionPane(),
            actionExtentRatio: 0.25,
            child: ListTile(
              title: Text('Item $index'),
            ),
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'Archive',
                color: Colors.blue,
                icon: Icons.archive,
                onTap: () => _archiveItem(context, index),
              ),
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
                onTap: () => _deleteItem(context, index),
              ),
            ],
          );
        },
      ),
    );
  }

  void _archiveItem(BuildContext context, int index) {
    // Implement your archive logic here
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Archived Item $index'),
    ));
  }

  void _deleteItem(BuildContext context, int index) {
    // Implement your delete logic here
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Deleted Item $index'),
    ));
  }
}
