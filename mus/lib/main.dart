import 'package:flutter/material.dart';
import 'card.dart';
import 'utilities.dart';
import 'dart:math';


void main() => runApp(MaterialApp(
  home: MusCardSet()
));



class MusCardSet extends StatefulWidget {
  @override
  _MusCardSetState createState() => _MusCardSetState();
}

class _MusCardSetState extends State<MusCardSet> {

  List<MusCard2> musCardSet = [
    MusCard2(),
    MusCard2(),
    MusCard2(),
    MusCard2()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Mus'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
          children:[
            Row(
              children: musCardSet
            ),
            FlatButton(
              onPressed: (){
                  for (int i = 0; i <= 4; i++) {
                    Random random = new Random();
                    int randomNumber = random.nextInt(40);
                    }
                })]));
              }
          }





