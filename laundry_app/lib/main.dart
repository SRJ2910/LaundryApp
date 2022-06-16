import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';
import 'package:laundry_app/screens/home_screen.dart';
import 'package:laundry_app/screens/login_screen.dart';
import 'package:laundry_app/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Scada',
        textTheme: const TextTheme(
            headline1: kTitleTextDecoration, bodyText1: kFieldTextDecoration),
      ),
    );
  }
}
