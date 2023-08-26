// return Scaffold(
// body: Column(
// children: [
// TextFormField(controller: myc,),
//
// ElevatedButton(onPressed: (){
// myc.text = "9";
// }, child: Text("1"))
//
// ],
// ),
// );
// } to make button bring value to text field
// body: Form(
//     key: as,
//     child: Column(
//       children: [
//         SizedBox(height: 200,),
//         TextFormField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//
//           ),
//           validator: (val)
//           {
//             if(val == null || val.isEmpty)
//               {
//                 return 'Ente valid name';
//               }
//           },
//         ),
//         TextFormField(
//           decoration: InputDecoration(
//             border: OutlineInputBorder(
//             ),
//
//           ),
//           validator: (value){
//             print(value);
//             if(value!.isEmpty){
//               return "Please Enter Email";
//             }else if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value))
//             {
//               return "Please Enter a Valid Email";
//             }
//             return null;
//           },
//         ),
//         ElevatedButton(onPressed: (){
//           if(as.currentState!.validate())
//             {
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(builder: (context) => const Secondroute()),
//               // );
//             }
//
//         }, child: Text("ok"))
//       ],
//     ),
//   ),
// ); to create validation

// void AnimateIcon() {
//   setState(() {
//     isAnimated = !isAnimated;
//     if(isAnimated)
//     {
//       iconController.forward();
//       audioPlayer.play();
//     }else{
//       iconController.reverse();
//       audioPlayer.pause();
//     }
//   });
// }

// @override
// void dispose() {
//   // TODO: implement dispose
//   iconController.dispose();
//   audioPlayer.dispose();
//   super.dispose();
// }