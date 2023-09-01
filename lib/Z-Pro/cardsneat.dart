import 'package:flutter/material.dart';



class fruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cards'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: GridTile(
              // header section
                header: GridTileBar(
                  backgroundColor: Colors.white,
                  leading: const CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                    child: Text(
                      'K',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  title: const Text(
                    'KindaCode.com',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: const Text('5 minutes ago',
                      style: TextStyle(color: Colors.grey)),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert_rounded,
                        color: Colors.black54,
                      )),
                ),
                // footer section
                footer: GridTileBar(
                  backgroundColor: Colors.white,
                  title: Row(
                    children: const [
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.grey,
                      ),
                      Text('20', style: TextStyle(color: Colors.black)),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.grey,
                      ),
                      Text(
                        '5',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.bookmark_outline,
                    color: Colors.black,
                  ),
                ),
                // main child
                child: Image.network(
                  'https://www.kindacode.com/wp-content/uploads/2021/12/sample-leaf.jpeg',
                  fit: BoxFit.cover,
                )),
          );
        },
      ),
    );
  }
}
