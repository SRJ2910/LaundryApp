import 'package:flutter/material.dart';

const kLightBackgroundColor = Color(0xFFE1E3E7);
const kDarkColor = Color(0xFF333B4E);
const kTitleTextDecoration = TextStyle(
  color: kDarkColor,
  fontSize: 50,
  fontFamily: 'Roboto',
);
const kBottomBoxDecoration = BoxDecoration(
  color: Color(0xFFD9D9D9),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(50),
    topLeft: Radius.circular(50),
  ),
);
const kFieldTextDecoration =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
const kSmallTextDecoration = TextStyle(
    fontSize: 20,
    fontFamily: 'Scada',
    fontWeight: FontWeight.bold,
    color: Colors.black);
