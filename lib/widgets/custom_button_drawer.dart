import 'package:flutter/material.dart';

class CustomButtonDrawer extends StatelessWidget {
  const CustomButtonDrawer(
      {Key? key,
      required this.text,
      required this.pathImage,
      this.crossAxisAlignmentUpdate})
      : super(key: key);

  final String text;
  final String pathImage;
  final CrossAxisAlignment? crossAxisAlignmentUpdate;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignmentUpdate ?? CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 13),
        ),
        const SizedBox(
          width: 6,
        ),
        Image.asset(
          pathImage,
          scale: 2.1,
        ),
      ],
    );
  }
}
