import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:permission_handler/permission_handler.dart';

class RecordController extends GetxController {
  final _speechToText = SpeechToText();

  bool speechEnabled = false;
  final editingController = TextEditingController();
  var isRecording = false.obs;

  @override
  void onInit() {
    _initSpeech();
    super.onInit();
  }

  @override
  void onClose() {
    stopRecording();
    super.onClose();
  }

  _initSpeech() async {
    var recordStatus = await Permission.microphone.request();
    var speechStatus = await Permission.speech.request();
    if ((recordStatus.isDenied || recordStatus.isPermanentlyDenied) &&
        (speechStatus.isDenied || speechStatus.isPermanentlyDenied)) {
      _showAlert();
    } else {
      speechEnabled = await _speechToText.initialize();
    }
  }

  startRecording() async {
    if (speechEnabled) {
      await _speechToText.listen(onResult: _onRecordResult);
    }
  }

  stopRecording() async {
    await _speechToText.stop();
  }

  _onRecordResult(SpeechRecognitionResult result) {
    isRecording.value = true;
    editingController.text = result.recognizedWords;
  }

  _showAlert() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return Get.dialog(
        AlertDialog(
          title: const Text('Access'),
          content: const Text(
              'Please turn on permission in settings to continue using feature'),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () => openAppSettings(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return Get.dialog(
        CupertinoAlertDialog(
          title: const Text('Access'),
          content: const Text(
              'Please turn on permission in settings to continue using feature'),
          actions: [
            TextButton(
              onPressed: () => Get.back(),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () => openAppSettings(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
