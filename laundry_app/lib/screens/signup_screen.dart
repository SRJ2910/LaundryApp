import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';
import 'package:laundry_app/widget/custom_button.dart';
import 'package:laundry_app/widget/user_details_textfield.dart';

class SignUpScreen extends StatefulWidget {
  static const id = 'signup_screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackgroundColor,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/TShirt-bgremoved.png',
                  width: 80,
                ),
                Text(
                  "SIGN UP",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: kBottomBoxDecoration,
              padding: kBottomBoxPadding,
              child: Column(children: [
                UserDetailsTextField(
                  fieldName: 'Name',
                ),
                UserDetailsTextField(
                  fieldName: 'ID',
                ),
                UserDetailsTextField(
                  fieldName: 'Room No.',
                ),
                UserDetailsTextField(
                  fieldName: 'Password',
                ),
                UserDetailsTextField(
                  fieldName: 'Confirm \nPassword',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: 'Create Account',
                  onpressed: () => null,
                ),
                Spacer(),
                DefaultTextStyle(
                  style: kSmallTextDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Already Registered ? ',
                        textScaleFactor: 0.8,
                      ),
                      GestureDetector(
                        child: const Text(  //const for now since onTap is const
                          'Sign in',
                          style: TextStyle(decoration: TextDecoration.underline,),
                          textScaleFactor: 0.8,
                        ),
                        onTap: () => print('Sign in pressed'),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
