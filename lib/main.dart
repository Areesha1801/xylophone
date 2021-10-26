import 'package:flutter/material.dart';
import 'package:xylophone/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Main',
      debugShowCheckedModeBanner: false,
      home: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  static String holder = '';
  static String holder_2 = '';
  static List<Color> myList_1 = [];
  static List<int> myList_2 = [];

  @override
  DropDownWidget createState() => DropDownWidget();
}

class DropDownWidget extends State<DropDown> {
  int count = 0;
  void convertion(String color, String soundNumber) {
    var clr_no;
    var wav_no = DropDown.holder_2;
    var number = int.parse(wav_no);
    var clr = DropDown.holder;

    if (clr == 'blue') {
      clr_no = Color(0xff2196f3);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'green') {
      clr_no = Color(0xff4caf50);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'purple') {
      clr_no = Color(0xff9c27b0);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'pink') {
      clr_no = Color(0xffe91e63);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'grey') {
      clr_no = Color(0xff9e9e9e);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'teal') {
      clr_no = Color(0xff009688);
      DropDown.myList_1.add(clr_no);
    }
    if (clr == 'red') {
      clr_no = Color(0xfff44336);
      DropDown.myList_1.add(clr_no);
    }
    DropDown.myList_2.add(number);
    print(DropDown.myList_2);
    print(DropDown.myList_1);
    print(count);
  }

  String dropdownValue = 'blue';
  String dropdownValue_2 = '1';

  // To show Selected Item in Text.

  List<String> colorName = [
    'blue',
    'green',
    'purple',
    'pink',
    'grey',
    'teal',
    'red'
  ];
  List<String> soundNo = ['1', '2', '3', '4', '5', '6', '7'];

  void getDropDownItem() {
    setState(() {
      DropDown.holder = dropdownValue;
      DropDown.holder_2 = dropdownValue_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'XyloPhone App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            DropdownButton(
              value: dropdownValue,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.red, fontSize: 18),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (data) {
                setState(() {
                  dropdownValue = data.toString();
                });
              },
              items: colorName.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton(
              value: dropdownValue_2,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.red, fontSize: 18),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (data) {
                setState(() {
                  dropdownValue_2 = data.toString();
                });
              },
              items: soundNo.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            RaisedButton(
              child: Text('Next'),
              onPressed: () {
                if (count == 6) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => XylophoneApp()));
                }
                count++;
                getDropDownItem();
                convertion(DropDown.holder, DropDown.holder_2);
              },
              color: Colors.blue,
              textColor: Colors.white,
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ],
        ),
      ),
    );
  }
}
