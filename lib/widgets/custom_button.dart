import 'package:flutter/material.dart';


class CustomBottom extends StatelessWidget {
  final String text;
  final double roundness;
  final double? horizontal;
  final double? vertical;
  final FontWeight fontWeight;
  final VoidCallback? onTap;
  final Color colorText;
  final Color colorBottom;
  final double? fontSize;
  final double? sizeCircular;
  final double? width;
  final double? height;

  const CustomBottom({
    Key? key,
    required this.text,
    this.roundness = 18,
    this.fontWeight = FontWeight.bold,
    this.onTap,
    required this.colorText,
    this.fontSize,
    required this.colorBottom,
    this.width,
    this.height,
    this.sizeCircular,
    this.horizontal,
    this.vertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: horizontal??0,vertical:vertical??0 ),
        decoration: BoxDecoration(
          color: colorBottom,
          borderRadius: BorderRadius.circular(sizeCircular??20),
        ),
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: colorText
            ),
          ),
        ),
      ),
    );
  }
}
