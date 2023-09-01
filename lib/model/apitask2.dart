import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testtt/model/apiprod.dart';

import 'classapi.dart';

class taskapi2 extends StatefulWidget {
  const taskapi2({super.key});

  @override
  State<taskapi2> createState() => _taskapi2State();
}

class _taskapi2State extends State<taskapi2> {


  Future<List<Fakestore>>fakeapi()async{
    var res=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    List data= jsonDecode(res.body);
    return data.map((e) => Fakestore.fromJson(e)).toList();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product",style: TextStyle(color: Colors.white),),

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
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>
                                apipro(idd: snapshot.data![index].id!,
                                    titlee: snapshot.data![index].title.toString(),
                                    pricee: snapshot.data![index].price.toString(),
                                    descriptionn: snapshot.data![index].description.toString(),
                                    categoryy: snapshot.data![index].category.toString(),
                                    imagee: snapshot.data![index].image.toString(),
                                    ratingg: snapshot.data![index].rating.toString()
                                ),
                        ),
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
