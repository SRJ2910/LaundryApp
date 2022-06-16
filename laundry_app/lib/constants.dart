import 'package:flutter/material.dart';


//Color Constants
const kGreyBackgroundColor = Color(0xFFE1E3E7);
const kLightBackgroundColor = Color(0xFFEFEFF1);
const kDarkColor = Color(0xFF333B4E);

//TextStyle Decorations
const kTitleTextDecoration = TextStyle(
  color: kDarkColor,
  fontSize: 60,
  fontFamily: 'Roboto',
);
const kSmallTextDecoration = TextStyle(
    fontSize: 20,
    fontFamily: 'Scada',
    fontWeight: FontWeight.bold,
    color: Colors.black);
const kFieldTextDecoration = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

//Box Decorations
const kBottomBoxDecoration = BoxDecoration(
  color: Color(0xFFD9D9D9),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(50),
    topLeft: Radius.circular(50),
  ),
);

//Paddings
const kBottomBoxPadding = EdgeInsets.all(30);
