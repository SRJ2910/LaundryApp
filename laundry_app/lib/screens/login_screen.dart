import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Center(
                child: Card(
                  child: Image.asset('images/TShirt.png', scale: 0.7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text(
                  "LAUNDRY",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: kBottomBoxDecoration,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      UserField("User ID"),
                      UserField("Password"),
                      const SizedBox(height: 10,),
                      TextButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(kDarkColor),fixedSize: MaterialStateProperty.all<Size?>(const Size.fromWidth(300)) ),
                        onPressed: null,
                        child: Text("LOG IN", style: kFieldTextDecoration.copyWith(color: Colors.white),),
                      ),
                      DefaultTextStyle(
                        style: kSmallTextDecoration,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            children: [
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Flexible(child: Text("Don't have an account? ")),
                                    GestureDetector(
                                      child: const Text(
                                        "SignUp",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          GestureDetector(child: const Text("Forgot your password?")),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserField extends StatefulWidget {
  UserField(this.fieldName);
  final String fieldName;
  @override
  State<UserField> createState() => _UserFieldState(this.fieldName);
}

class _UserFieldState extends State<UserField> {
  @override
  _UserFieldState(this.fieldName);
  final String fieldName;
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text(
              "$fieldName",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Text(" : ", style: kFieldTextDecoration,),
          const SizedBox(
            width: 200,
            child:  TextField(),
          ),
        ],
      ),
    );
  }
}
