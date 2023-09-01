import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testtt/model/taskapi3.dart';

import 'classapi.dart';
import 'cons.dart';

class Discateg extends StatefulWidget {
  const Discateg({Key? key}) : super(key: key);



  @override


  State<Discateg> createState() => _DiscategState();
}

class _DiscategState extends State<Discateg> {

  Future<List<CategoryList>>FetchDetail()async{

    var resp = await http.get(Uri.parse("http://catodotest.elevadosoftwares.com//Category/GetAllCategories"));

    var data =  jsonDecode(resp.body)["categoryList"];
    print(resp.body);


    return (data as List).map((e) => CategoryList.fromJson(e)).toList();

  }

@override
  void initState() {
    // TODO: implement initState
  //FetchDetail();
    super.initState();
    FetchDetail();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Category details",style: TextStyle(color: Colors.white,fontSize: 18),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Addcateg())
              );
            }, icon: Icon(Icons.add,color: Colors.white,)),
          ),
        ],
      ),
      body: FutureBuilder< List<CategoryList> >(
        future: FetchDetail(),
        builder: (context , snapshot){
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context , index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:GestureDetector(
                      child: ListTile(
                        title: Column(
                          children: [
                            Text("Category ID: ${snapshot.data![index].categoryId.toString()}"),
                            Text("Category: ${snapshot.data![index].category.toString()}"),
                          ],
                        ),
                        onTap: () => showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          useSafeArea: true,
                          context: context,
                          builder: (context) => showmodalsheetcat(
                            categoryId:snapshot.data![index].categoryId.toString() ,
                            category: snapshot.data![index].category.toString(),
                            description: snapshot.data![index].description.toString(),
                            deletedOn: snapshot.data![index].deletedOn.toString(),
                            removedRemarks:snapshot.data![index].removedRemarks.toString() ,
                            createdBy: snapshot.data![index].createdBy.toString(),

                          ),
                        ),
                      ),
                    ),
                  );

                });
          }
          else if (snapshot.hasError) {
            return Column(
                children :[
                  const Icon(Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  ),
                ]
            );
          }
          else {
            return Padding(
              padding: EdgeInsets.only(top: 48.0,left: 150),
              child: Column(
                  children :[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Awaiting result...'),
                    ),
                  ]
              ),
            );
          }
        },
      ),
    );
  }
}
class showmodalsheetcat extends StatefulWidget {



  final String categoryId;
  final String category;
  final String description;
  final String deletedOn;
  final String removedRemarks;
  final String createdBy;


  showmodalsheetcat({super.key,
    required this.categoryId,
    required this.category,
    required this.description,
    required this.deletedOn,
    required this.removedRemarks,
    required this.createdBy,

  });

  @override
  State<showmodalsheetcat> createState() => _showmodalsheetcatState();
}

class _showmodalsheetcatState extends State<showmodalsheetcat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
            topRight: Radius.circular(50)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Category Id: ${widget.categoryId}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Category:  ${widget.category}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Description:${widget.description}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Deleted on: ${widget.deletedOn}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Removed remarks: ${widget.removedRemarks}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Created By :  ${widget.createdBy}",style: texts,),
          ),
          Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom )
          ),
        ],
      ),
    );
  }
}