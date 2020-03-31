import 'package:flutter/material.dart';




String cardNumberToPNGName(int cardNumber){
  if(cardNumber == -1){return 'blue_back';}
  int suit = (cardNumber / 10).floor();
  int number = cardNumber % 10;
  List<String> suitList = ['D', 'H', 'C', 'S'];
  List<String> numberList = ['A', '2','3','4','5','6','7', 'J','Q', 'K'];
  return '${numberList[number]}${suitList[suit]}';
}


int toInt(bool b){
  if(b){return 1;}
  return 0;
}