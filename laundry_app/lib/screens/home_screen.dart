import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';
import 'package:laundry_app/widget/custom_button.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackGroundColor,
      //TODO: add gradient background color!
      body: SafeArea(
        child: DefaultTextStyle(
          style: kSmallTextDecoration.copyWith(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '202011033 \nJigyashu Gupta',
                            textScaleFactor: 0.8,
                          ),
                          Row(
                            children: [
                              Text(
                                'Log Out',
                                textScaleFactor: 0.8,
                              ),
                              Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          children: [
                            Text(
                              'Clothes washed with care',
                              textScaleFactor: 1.5,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit. Nunc vulputate libero et velit \n interdum, ac aliquet odio mattis.',
                              textScaleFactor: 0.7,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButton(
                              text: "History",
                              icon: Icons.lock_clock,
                              onPressed: () => print('show history'),
                              textColor: kDarkColor,
                              bgColor: kLightBackgroundColor,
                              width: kSmallButtonWidth),
                          CustomButton(
                              text: "Pay",
                              icon: Icons.currency_rupee,
                              onPressed: () => print('Do payment'),
                              textColor: kDarkColor,
                              bgColor: kLightBackgroundColor,
                              width: kSmallButtonWidth),
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/ArrivalTimeBG.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          height: 200,
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Arriving On',
                                style: kFieldTextDecoration.copyWith(
                                    color: Colors.white),
                              ),
                              Text(
                                '18: 00',
                                textScaleFactor: 2.5,
                              ),
                              Text(
                                'Monday, June 30',
                                style: kFieldTextDecoration.copyWith(
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                        text: "Arriving in 03 Days",
                        onPressed: () => print('Arriving in n days'),
                        bgColor: kDarkColor,
                        textColor: Colors.white,
                        width: kBigButtonWidth),
                    SizedBox(height: 10,),
                    CustomButton(
                        text: "Add Clothes",
                        icon: Icons.add_box,
                        onPressed: () => print('Clothes added'),
                        bgColor: kDarkColor,
                        textColor: Colors.white,
                        width: kBigButtonWidth),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
