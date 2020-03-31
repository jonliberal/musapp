import 'package:flutter/material.dart';
import 'utilities.dart';

//


class MusCard extends StatefulWidget {
  @override
  _MusCardState createState() => _MusCardState();
}

class _MusCardState extends State<MusCard> {

  int number = -1;
  bool readyToDiscard = false;

  void setCardNumber(int newNumber) {
    setState(() {
      number = newNumber;
    });
  }

  @override

  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 100,
        child:Column(
            children: <Widget>[
              Text(
                '$number $readyToDiscard',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height: 40.0*toInt(!readyToDiscard),
              ),
              Opacity(
                opacity: 1-(toInt(readyToDiscard))*0.5,
                  child:FlatButton(
                    onPressed: (){
                      setState() {
                        readyToDiscard = !readyToDiscard;
                      }
                    },
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset("media/poker/PNG/${cardNumberToPNGName(number)}.png"))),
            ]));
  }
}




class MusCard2 extends StatelessWidget {

  int number = -1;
  bool readyToDiscard = false;


  void setCardNumber(int newNumber) {
      number = newNumber;
    }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 100,
        child:Column(
            children: <Widget>[
              Text(
                '$number $readyToDiscard',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(
                height: 40.0*toInt(!readyToDiscard),
              ),
              Opacity(
                  opacity: 1-(toInt(readyToDiscard))*0.5,
                  child:FlatButton(
                      onPressed: (){
                          readyToDiscard = !readyToDiscard;
                        },
                      padding: EdgeInsets.all(0.0),
                      child: Image.asset("media/poker/PNG/${cardNumberToPNGName(number)}.png"))),
            ]));
  }
}

