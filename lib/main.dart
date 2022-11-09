import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  playsound(int snum){
    final audioCach = AudioCache();
    audioCach.play('note$snum.wav');
  }
  Widget builtui(var  text,MaterialColor culor,int num){
     return Expanded(
       child: FlatButton(
         color: culor,
         onPressed: () {
           playsound(num);

         },
         child: Text(text),
       ),
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            builtui('DO', Colors.indigo, 1),
            builtui('RE', Colors.amber, 2),
          builtui('MI', Colors.red, 3),
            builtui('FA', Colors.teal, 4),
            builtui('SO', Colors.pink, 5),
            builtui('LA', Colors.blue, 6),
            builtui('Se', Colors.deepOrange, 7),

          ],
        ),
      ),
    );
  }
}
