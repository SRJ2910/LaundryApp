import 'package:flutter/material.dart';
import 'package:laundry_app/constants.dart';

class CustomTextField extends StatefulWidget {
  final String? fieldName;
  final bool obscureText;
  final Function(String?)? onChanged;
  const CustomTextField(
      {Key? key, this.fieldName, this.obscureText = false, this.onChanged})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Text(
            widget.fieldName!,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        const Text(
          " : ",
          style: kFieldTextDecoration,
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 150,
          child: TextField(
            onChanged: (e) {
              if (widget.onChanged == null) {
                return;
              }
              widget.onChanged!(e);
            },
            cursorColor: Colors.black,
            obscureText: widget.obscureText,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black54),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
            style: const TextStyle(
              overflow: TextOverflow.visible,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
