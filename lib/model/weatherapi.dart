// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:testtt/model/taskapi3.dart';
//
// import 'classapi.dart';
// import 'cons.dart';
//
// class weather extends StatefulWidget {
//   const weather({Key? key}) : super(key: key);
//
//
//
//   @override
//
//
//   State<weather> createState() => _weatherState();
// }
//
// class _weatherState extends State<weather> {
//
//   String dropdownvalue = 'Chennai';
//   String temp1 = "";
//   String temp2 = "";
//   final List<DropdownMenuItem>  items = [DropdownMenuItem(city: "Chennai", "lat":"","long":"")];
//
//   ];
//   Future<CurrentWeather>Fetchweather(String lat, String long)async{
//
//
//     var data=await http.get(Uri.parse("https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$long&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m"));
// print(data.body);
//     var h = jsonDecode(data.body)["current_weather"];
//     print(h);
//     return CurrentWeather.fromJson(h);}
//
//   @override
//
//
//
//
//   @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   //FetchDetail();
//   //   super.initState();
//   //   FetchDetail();
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         title: Text("WEATHER API",style: TextStyle(color: Colors.white,fontSize: 18),),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 40,
//               child: DropdownButton(
//                 value: dropdownvalue,
//                 icon: const Icon(Icons.keyboard_arrow_down),
//
//                 items: items.map((items) {
//                   return DropdownMenuItem(
//                     value: items,
//                     child: Text(items.l),
//                   );
//                 }).toList(),
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     dropdownvalue = newValue!;
//                     Fetchweather("","");
//
//
//                   });
//
//                 },
//               ),
//             ),
//             FutureBuilder<CurrentWeather>(
//                 future: Fetchweather("",""),
//                 builder: (context,snapshot){
//                   if (snapshot.hasData){
//
// print("dnfmdsnfsdnd");
// print(snapshot.data);
//                     return Column(
//                       children: [
//                         // Container(
//                         //   height: 40,
//                         //   child: DropdownButton(
//                         //     value: dropdownvalue,
//                         //     icon: const Icon(Icons.keyboard_arrow_down),
//                         //
//                         //     items: items.map((String items) {
//                         //       return DropdownMenuItem(
//                         //         value: items,
//                         //         child: Text(items),
//                         //       );
//                         //     }).toList(),
//                         //     onChanged: (String? newValue) {
//                         //       setState(() {
//                         //         dropdownvalue = newValue!;
//                         //         Fetchweather();
//                         //
//                         //       });
//                         //
//                         //     },
//                         //   ),
//                         // ),
//                         SizedBox(height: 10,),
//                         // Padding(
//                         //   padding: const EdgeInsets.all(30.0),
//                         //   child: Center(child:
//                         //   Text(snapshot.data!.currentWeather!.weathercode.toString()),),
//                         // ),
//                         Padding(
//                           padding: const EdgeInsets.all(30.0),
//                           child: Center(child:
//                           Row(
//                             children: [
//                               Text(snapshot.data!.temperature.toString()),
//                               Text(temp2),
//                             ],
//                           ),),
//                         ),
//                       ],
//                     );
//                   }else if(snapshot.hasError){
//                     return Column(
//                       children: [
//                         Icon(Icons.error_outline,color: Colors.red,size: 60,),
//                         Text("Error: ${snapshot.error}"),
//                       ],
//                     );
//                   }else{
//                     return Column(
//                       children: [
//                         SizedBox(height: 60,width: 60,
//                           child: CircularProgressIndicator(color: Colors.red,),),
//                         SizedBox(height: 10,),
//                         Text("Results are coming")
//                       ],
//                     );
//                   }
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class showmodalsheetcat extends StatefulWidget {
//
//
//
//   final String temperature;
//
//   final String weathercode;
//
//
//
//
//   showmodalsheetcat({super.key,
//     required this.temperature,
//     required this.weathercode,
//
//
//   });
//
//   @override
//   State<showmodalsheetcat> createState() => _showmodalsheetcatState();
// }
//
// class _showmodalsheetcatState extends State<showmodalsheetcat> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400,
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
//             topRight: Radius.circular(50)),
//         color: Colors.white,
//       ),
//       child: Column(
//         children: [
//           SizedBox(height: 80,),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("Temperature: ${widget.temperature}",style: texts),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text("weathercode:  ${widget.weathercode}",style: texts),
//           ),
//
//           Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom )
//           ),
//         ],
//       ),
//     );
//   }
// }