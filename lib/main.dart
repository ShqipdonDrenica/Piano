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
  //kthen nje widget qe eshte button qe pranon si parameter ngjyren dhe emrin e videos, te cilat i vendosim me vone kur ti therrasim
  Widget button({required Color color, required String soundNumber}) {
    //krijimi i nje varible qe na mundeson qe te luhet voice(video)
    final player = new AudioCache();
    //butoni i krijuar me madhesin e caktuar
    return FlatButton(
      height: 100,
      onPressed: () {
        //kur behet click do te leshohet videoja me emrin note qe ka edhe numrin qe do te japim me vone kur e therrasim me endswith wav
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
          //krijimi i buttonave duke perdorur metoden me lart ku ja caktojm ngjyren per secilin button
          //dhe bashkangjesim nr e emrit qe permban videoja
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
