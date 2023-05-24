import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormField extends StatelessWidget {
  CustomFormField(
      {Key? key,
        this.hintText,
        this.onChanged,
        this.obscureText = false
      })
      : super(key: key);

  Function(String)? onChanged;

  String? hintText;

  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 23.0,right: 23),
        child: TextFormField(
          textAlign: TextAlign.right,
          textAlignVertical: TextAlignVertical.bottom,
          obscureText: obscureText!,
          validator: (data) {
            if (data!.isEmpty) {
              return 'field is required';
            }
            return null;
          },
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFFCDCDCD),
              fontSize: 15,
            ),
            enabledBorder:  InputBorder.none,
            border: InputBorder.none,

          ),
        ),
      ),
    );
  }
}
