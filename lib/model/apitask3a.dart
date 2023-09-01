import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'apitask3.dart';
import 'classapi.dart';
import 'cons.dart';

class ClientDis extends StatefulWidget {
  const ClientDis({Key? key}) : super(key: key);

  @override
  State<ClientDis> createState() => _ClientDisState();
}

class _ClientDisState extends State<ClientDis> {

  Future<List<ClientList>>FetchDetails()async{

    var resp = await http.get(Uri.parse("http://catodotest.elevadosoftwares.com/Client/GetAllClientDetails"));

    var data =  jsonDecode(resp.body)["clientList"];
    print(data);
    return (data as List).map((e) => ClientList.fromJson(e)).toList();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Client Details",style: TextStyle(color: Colors.white,fontSize: 18),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddDetails())
              );
            }, icon: Icon(Icons.add,color: Colors.white,)),
          ),
        ],
      ),
      body: FutureBuilder< List<ClientList> >(
        future: FetchDetails(),
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
                            Text("Client: ${snapshot.data![index].clientName.toString()}"),
                            Text("Ph no: ${snapshot.data![index].phone.toString()}"),
                          ],
                        ),
                        onTap: () => showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          useSafeArea: true,
                          context: context,
                          builder: (context) => showmodalsheet(
                            clientId:snapshot.data![index].clientId.toString() ,
                            clientName: snapshot.data![index].clientName.toString(),
                            phone: snapshot.data![index].phone.toString(),
                            address: snapshot.data![index].address.toString(),
                            gst:snapshot.data![index].gst.toString() ,
                            website: snapshot.data![index].website.toString(),
                            email: snapshot.data![index].email.toString(),
                            contactPerson: snapshot.data![index].contactPerson.toString(),
                            phoneNumber: snapshot.data![index].phoneNumber.toString(),
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
class showmodalsheet extends StatefulWidget {

  final String clientId;
  final String clientName;
  final String phone;
  final String address;
  final String gst;
  final String website;
  final String email;
  final String contactPerson;
  final String phoneNumber;

  showmodalsheet({super.key,
    required this.clientId,
    required this.clientName,
    required this.phone,
    required this.address,
    required this.gst,
    required this.website,
    required this.email,
    required this.contactPerson,
    required this.phoneNumber,
  });

  @override
  State<showmodalsheet> createState() => _showmodalsheetState();
}

class _showmodalsheetState extends State<showmodalsheet> {
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
            child: Text("Client Name: ${widget.clientName}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Client Id:  ${widget.clientId}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Phone number:${widget.phoneNumber}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Website: ${widget.website}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Email: ${widget.email}",style: texts),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Gst:  ${widget.gst}",style: texts,),
          ),
          Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom )
          ),
        ],
      ),
    );
  }
}