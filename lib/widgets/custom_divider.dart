import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  // final double height;
  // final Color color;

  @override
  Widget build(BuildContext context) {
    return  const Divider(
      height: 1,
      color: Color(0xFF6B6B6B),
    );
  }
}
