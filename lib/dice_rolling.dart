import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DiceRolling extends StatefulWidget {
  const DiceRolling({Key? key}) : super(key: key);

  @override
  State<DiceRolling> createState() => _DiceRollingState();
}

class _DiceRollingState extends State<DiceRolling> {

  int rightDice = 1;
  int leftDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Dice Rolling',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: GestureDetector(
                 onTap: (){
                   clickDice();
                 },
                 child: Image(
                   image: AssetImage('images/dice$leftDice.png'),
                 ),
               ),
             ),
           ),
           Expanded(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: GestureDetector(
                 onTap: (){
                   clickDice();
                 },
                 child: Image(
                 image: AssetImage('images/dice$rightDice.png'),),
               ),
             ),
           ),
          ],
        ),
      ),
    );
  }

  clickDice(){
     setState(() {
       rightDice = Random().nextInt(5) + 1;
       leftDice =  Random().nextInt(5) + 1;
     });

  }
}
