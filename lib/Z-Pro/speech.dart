import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';

class SpeechRecognitionManager {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _lastRecognizedWords = '';

  SpeechRecognitionManager() {
    _speech = stt.SpeechToText();
  }

  bool get isListening => _isListening;
  String get lastRecognizedWords => _lastRecognizedWords;

  Future<void> initSpeechRecognition() async {
    bool available = await _speech.initialize(
      onStatus: _onRecognitionStatus,
      onError: _onRecognitionError,
    );
    if (available) {
      _isListening = true;
    }
  }

  void _onRecognitionStatus(String status) {
    // Handle recognition status changes
  }

  void _onRecognitionError(SpeechRecognitionError error) {
    // Handle recognition errors
  }

  Future<void> startListening() async {
    if (!_isListening) {
      _lastRecognizedWords = '';
      _isListening = true;
      await _speech.listen(
        onResult: _onRecognitionResult,
      );
    }
  }

  void _onRecognitionResult(SpeechRecognitionResult result) {
    if (result.finalResult) {
      _lastRecognizedWords = result.recognizedWords;
    }
  }

  Future<void> stopListening() async {
    if (_isListening) {
      _isListening = false;
      await _speech.stop();
    }
  }
}


class SpeechRecognitionScreen extends StatefulWidget {
  @override
  _SpeechRecognitionScreenState createState() => _SpeechRecognitionScreenState();
}

class _SpeechRecognitionScreenState extends State<SpeechRecognitionScreen> {
  SpeechRecognitionManager _speechManager = SpeechRecognitionManager();

  @override
  void initState() {
    super.initState();
    _speechManager.initSpeechRecognition();
  }

  @override
  void dispose() {
    _speechManager.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speech Recognition Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Last Recognized Words:',
            ),
            Text(
              _speechManager.lastRecognizedWords,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _speechManager.isListening ? _speechManager.stopListening : _speechManager.startListening,
              child: Text(_speechManager.isListening ? 'Stop Listening' : 'Start Listening'),
            ),
          ],
        ),
      ),
    );
  }
}
