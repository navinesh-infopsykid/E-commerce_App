import 'package:animated_background/animated_background.dart';
import 'package:animated_background/particles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:testtt/new%20app/tamilletters.dart';
import 'package:testtt/new%20app/tamillettersm.dart';
import 'package:testtt/new%20app/tamillettersum.dart';

class hometamil extends StatefulWidget {
  const hometamil({super.key});

  @override
  State<hometamil> createState() => _hometamilState();
}

class _hometamilState extends State<hometamil>
    with SingleTickerProviderStateMixin{

  ParticleOptions particles = const ParticleOptions(
    baseColor: Colors.green,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.75,
    minOpacity: 0.1,
    maxOpacity: 0.18,
    particleCount: 120,
    spawnMaxRadius: 7.0,
    spawnMaxSpeed: 150.0,
    spawnMinSpeed: 10,
    spawnMinRadius: 5.0,
  );
  int currentindex= 0;

  final FlutterTts tts = FlutterTts();
  final TextEditingController controller =
  TextEditingController(text: 'Hello world');

  bool isSelected = false;

  Home() {
    tts.setLanguage('en');
    tts.setSpeechRate(0.4);
  }
  FlutterTts ftt = FlutterTts();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Tamil",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(options: particles),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Divider(thickness: 10,),

              Container(
                height: 55,

                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (
                      context) => letterstamil()));
                }, child: Text("            உயிரெழுத்துகள்             ->",style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w400),)),
              ),
              Divider(thickness: 10,),
              Container(
                height: 55,

                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (
                      context) => lettersm()));
                }, child: Text("          மெய்யெழுத்துகள்            ->",style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w400),)),
              ),
              Divider(thickness: 10,),


              // Center(
              //   child: GestureDetector(
              //     onTap: (){
              //       Navigator.push(context, MaterialPageRoute(builder: (
              //           context) => lettersum()));
              //
              //     },
              //     child: Container(height: 60,
              //       width: 330,
              //       child: Text("உயிர்மெய்யெழுத்துகள்",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),),
              //   ),
              // ),
              // Divider(thickness: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
// Container(
//   child: Column(
//     children: [
//       ElevatedButton(
//           onPressed:() async {
//
//             //your custom configuration
//             await ftt.setLanguage("en-US");
//             await ftt.setSpeechRate(0.5); //speed of speech
//             await ftt.setVolume(1.0); //volume of speech
//             await ftt.setPitch(1); //pitc of sound
//
//             //play text to sp
//             var result = await ftt.speak("Hello World, this is Flutter Campus.");
//             if(result == 1){
//               //speaking
//             }else{
//               //not speaking
//             }
//           },
//           child: Text("Text to Speech"))
//     ],
//   ),
// ),
// Text("உயிரெழுத்துகள்",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
// GestureDetector(
// onTap: (){
// Navigator.push(context, MaterialPageRoute(builder: (
// context) => lettersm()));
//
// },
// child: Center(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: ListTile(
//
// title: Center(child: Text("மெய்யெழுத்துகள்",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),)),
// trailing: Icon(Icons.arrow_forward_ios_rounded),
//
//
// )
//
//
// ),
// ),
// ),