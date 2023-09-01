import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'classapi.dart';

class taskapi1 extends StatefulWidget {
  const taskapi1({super.key});

  @override
  State<taskapi1> createState() => _taskapi1State();
}

class _taskapi1State extends State<taskapi1> {


  Future<List<Fakestore>>fakeapi()async{
    var res=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    List data= jsonDecode(res.body);
    return data.map((e) => Fakestore.fromJson(e)).toList();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom"),

      ),
      body: FutureBuilder<List<Fakestore>>(
          future: fakeapi(),
          builder: (context,snapshot){
            if (snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {

                        showModalBottomSheet<void>(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 500,

                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment
                                        .center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 50,),
                                      Center(child: Text(snapshot.data![index].id.toString())),
                                      SizedBox(height: 10,),
                                      Center(child: Text(snapshot.data![index].title.toString())),
                                      SizedBox(height: 10,),
                                      Center(child: Text(snapshot.data![index].price.toString())),
                                      SizedBox(height: 10,),
                                      Center(child: Text(snapshot.data![index].description.toString())),
                                      SizedBox(height: 10,),
                                      Center(child: Text(snapshot.data![index].category.toString())),
                                      SizedBox(height: 10,),
                                      Center(child: Container(
                                          height: 80,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(snapshot.data![index].image.toString())
                                            )
                                          ),)),
                                      SizedBox(height: 10,),
                                      Center(child: Text(snapshot.data![index].rating.toString())),
                                      SizedBox(height: 10,),]
                                ),
                              ),
                            );
                          },
                        );

                      },
                      child: ListTile(
                          title:Text(snapshot.data![index].title.toString()),
                        leading: Image.network(snapshot.data![index].image.toString()),
                        trailing: Text(snapshot.data![index].price.toString()),
                        subtitle: Text(snapshot.data![index].rating.toString()),
                      ),
                    );
                  }
              );
            }
            else if(snapshot.hasError){
              return Column(
                children: [
                  Icon(Icons.error_outline,color: Colors.red,size: 60,),
                  Text("Error: ${snapshot.error}"),
                ],
              );
            }
            else{
              return Column(
                children: [
                  SizedBox(height: 60,width: 60,
                    child: CircularProgressIndicator(color: Colors.red,),),
                  SizedBox(height: 10,),
                  Text("Results are coming")
                ],
              );
            }
          }),
    );
  }
}
