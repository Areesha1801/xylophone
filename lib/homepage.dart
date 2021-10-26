import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xylophone/main.dart';

class XylophoneApp extends StatelessWidget {
  //Color clr = DropDown.holder;

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: RaisedButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "images/xylophone.jpg",
                    alignment: Alignment.centerLeft,
                    height: 60,
                    width: 60,
                  ),
                  const Text(
                    '     Xylophone App',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                  color: DropDown.myList_1[0],
                  soundNumber: DropDown.myList_2[0]),
              buildKey(
                  color: DropDown.myList_1[1],
                  soundNumber: DropDown.myList_2[1]),
              buildKey(
                  color: DropDown.myList_1[2],
                  soundNumber: DropDown.myList_2[2]),
              buildKey(
                  color: DropDown.myList_1[3],
                  soundNumber: DropDown.myList_2[3]),
              buildKey(
                  color: DropDown.myList_1[4],
                  soundNumber: DropDown.myList_2[4]),
              buildKey(
                  color: DropDown.myList_1[5],
                  soundNumber: DropDown.myList_2[5]),
              buildKey(
                  color: DropDown.myList_1[6],
                  soundNumber: DropDown.myList_2[6])
            ],
          ),
        ),
      ),
    );
  }
}
