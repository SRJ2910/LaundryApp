import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color bgColor, textColor;
  final double width;

  CustomButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.bgColor,
      required this.textColor,
      required this.width,
      this.icon})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(widget.bgColor),
        fixedSize:
            MaterialStateProperty.all<Size?>(Size.fromWidth((widget.width))),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon != null
                ? Row(
                    children: [
                      Icon(widget.icon, color: widget.textColor,),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                : SizedBox(),
            Text(widget.text,
                style: kFieldTextDecoration.copyWith(color: widget.textColor)),
          ],
        ),
      ),
    );
  }
}
