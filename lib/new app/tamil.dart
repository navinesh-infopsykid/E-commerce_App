import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class tamilho extends StatefulWidget {
  const tamilho({super.key});

  @override
  State<tamilho> createState() => _tamilhoState();
}

class _tamilhoState extends State<tamilho> {

  // TextToSpeech tts = TextToSpeech();
  FlutterTts ftt = FlutterTts();
  FlutterTts flutterTts = FlutterTts();
  // String text ='hello world';
  String text = "வணக்கம்";
  // String text = "多影分身術";//ja-JP
  // String text = 'Hallo Mann';de-DE
  // String text = "Hei mies"; --fi-FI--
  // String text ="नमस्ते";//hi-IN
  final TextEditingController spk = TextEditingController();
// speak(String text) async{
//   await ftt.setLanguage("ta-IN");
//   await ftt.setPitch(1);
//   await ftt.speak(text);
// }
  Future<void> speak() async {
    await flutterTts.setLanguage('ta-IN'); // Set language explicitly
    await flutterTts.setPitch(1); // Speech pitch (0.5 to 2.0)
    await flutterTts.setSpeechRate(1); // Speech rate (0.0 to 1.0)
    await flutterTts.speak(text);
  }
//   Future<void> speak() async {
//     await tts.setLanguage('ta-IN'); // Set language explicitly
//     await tts.setPitch(1); // Speech pitch (0.5 to 2.0)
//
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextFormField(controller: spk,),
            ElevatedButton(onPressed: speak,
                child: Text("audio",style: TextStyle(color: Colors.black),))
          ],
        ),
      ),
    );
  }
}
