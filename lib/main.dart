import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text(
          'Dice',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ) ,
    ),
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  void changeface() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1; //1-6 numbers set now
      rightdicenumber = Random().nextInt(6) + 1;
      print('diceNumber = $leftdicenumber');
      print('diceNumber = $rightdicenumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: (){
                   changeface();
                  },
                  child: Image.asset('images/dice$leftdicenumber.png'),
                ),
              )
          ),
          Expanded(
              child:Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: (){
                      changeface();
                    },
                    child: Image.asset('images/dice$rightdicenumber.png')
                ),
              )
          ),
        ],
      ),
    );
  }
}