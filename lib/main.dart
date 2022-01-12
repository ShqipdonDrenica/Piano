import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piano',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget button({required Color color, required String soundNumber}) {
    final player = new AudioCache();
    return FlatButton(
      height: 100,
      onPressed: () {
        player.play("note$soundNumber.wav");
      },
      color: color,
      child: Text('   '),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          button(color: Colors.red, soundNumber: "1"),
          button(color: Colors.blue, soundNumber: "2"),
          button(color: Colors.green, soundNumber: "3"),
          button(color: Colors.purple, soundNumber: "4"),
          button(color: Colors.teal, soundNumber: "6"),
        ],
      ),
    );
  }
}
