import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';
import 'package:laundry_app/widget/custom_textfield.dart';

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
        backgroundColor: kLightBackgroundColor,
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
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          fieldName: "Username",
                          onChanged: (e) {
                            print(e);
                          },
                        ),
                        CustomTextField(
                          fieldName: "Password",
                          obscureText: true,
                          onChanged: (e) {
                            print(e);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(kDarkColor),
                              fixedSize: MaterialStateProperty.all<Size?>(
                                  const Size.fromWidth(300))),
                          onPressed: null,
                          child: Text(
                            "LOG IN",
                            style: kFieldTextDecoration.copyWith(
                                color: Colors.white),
                          ),
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
                                      print("object");
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
