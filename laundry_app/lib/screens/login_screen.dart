import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';
import 'package:laundry_app/widget/custom_button.dart';
import 'package:laundry_app/widget/user_details_textfield.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kGreyBackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 250,
                height: 310,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset('images/TShirt-bgremoved.png'),
                    ),
                    Text(
                      "LAUNDRY",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: kBottomBoxDecoration,
                  child: Padding(
                    padding: kBottomBoxPadding,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        UserDetailsTextField(
                          fieldName: "Username",
                          onChanged: (e) {
                            print(e);
                          },
                        ),
                        UserDetailsTextField(
                          fieldName: "Password",
                          obscureText: true,
                          onChanged: (e) {
                            print(e);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          width: kBigButtonWidth,
                          textColor: Colors.white,
                          bgColor: kDarkColor,
                          text: "LOGIN",
                          onPressed: () {
                            print("login");
                          },
                          icon: Icons.login,
                        ),
                        const Spacer(),
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
                                      const Flexible(
                                          child: Text(
                                        "Don't have an account? ",
                                        textScaleFactor: 0.8,
                                      )),
                                      GestureDetector(
                                        onTap: () {
                                          print("signup");
                                        },
                                        child: const Text(
                                          "Signup",
                                          textScaleFactor: 0.8,
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      print("password forgot");
                                    },
                                    child: const Text(
                                      "Forgot your password?",
                                      textScaleFactor: 0.7,
                                      style: TextStyle(
                                          decoration: TextDecoration.underline),
                                    )),
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
      ),
    );
  }
}
