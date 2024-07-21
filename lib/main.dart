import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Video Call/video_call.dart';

void main(List<String> args) {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideoCall(),
    );
  }
}
