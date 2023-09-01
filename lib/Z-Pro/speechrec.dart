import 'package:avatar_glow/avatar_glow.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:testtt/Z-Pro/speechcommands.dart';


class speecrecog extends StatefulWidget {
  const speecrecog({Key? key}) : super(key: key);

  @override
  State<speecrecog> createState() => _speecrecogState();
}

class _speecrecogState extends State<speecrecog> {
  String textSample = 'Click button to start recording';
  bool isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          'Speech Recognition App',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await FlutterClipboard.copy(textSample);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Text Copied to Clipboard')),
              );
            },
            icon: const Icon(
              Icons.copy,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButton: AvatarGlow(
        endRadius: 80,
        animate: isListening,
        glowColor: Colors.teal,
        child: FloatingActionButton(
          onPressed: toggleRecording,
          child: Icon(
            isListening ? Icons.circle : Icons.mic,
            size: 35,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.all(20.0).copyWith(bottom: 140),
            child: SubstringHighlight(
              text: textSample,
              terms: Command.commands,
              textStyle: const TextStyle(
                color: Colors.teal,
                fontSize: 30,
              ),
              textStyleHighlight: const TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }

  Future toggleRecording() => Speech.toggleRecording(
      onResult: (String text) => setState(() {
        textSample = text;
      }),
      onListening: (bool isListening) {
        setState(() {
          this.isListening = isListening;
        });
        if (!isListening) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            Utils.scanVoicedText(textSample);
          });
        }
      });
}

class Speech {
  static final _speech = SpeechToText();

  static Future<bool> toggleRecording(
      {required Function(String text) onResult,
        required ValueChanged<bool> onListening}) async {
    final isAvailable = await _speech.initialize(
        onStatus: (status) => onListening(_speech.isListening),
        onError: (error) => print('Error $error'));

    if (_speech.isListening) {
      _speech.stop();
      return true;
    }

    if (isAvailable) {
      _speech.listen(onResult: (value) => onResult(value.recognizedWords));
    }

    return isAvailable;
  }
}