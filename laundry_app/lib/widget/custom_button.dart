import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onpressed;
  final IconData? icon;

  CustomButton(
      {Key? key, required this.text, required this.onpressed, this.icon})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onpressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(kDarkColor),
          fixedSize:
              MaterialStateProperty.all<Size?>(const Size.fromWidth(300))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.icon != null
                ? Row(
                    children: [
                      Icon(widget.icon),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  )
                : SizedBox(),
            Text(widget.text,
                style: kFieldTextDecoration.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
