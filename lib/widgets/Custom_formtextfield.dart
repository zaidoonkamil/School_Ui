import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({Key? key,
    this.hintText,
    this.text,
    this.keyboardType,
    this.onChanged,
    this.obscureText =false
  }) : super(key: key);

  String? hintText;
  final TextInputType? keyboardType;
  String? text;
  Function(String)? onChanged;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:6,horizontal: 1),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                text!,style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: const Color(0xFF222222),
                fontWeight: FontWeight.normal,
                fontSize: 16
              ),),
              const SizedBox(width: 4,),

            ],
          ),
          const SizedBox(height: 4,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: const Color(0xFF6B6B6B),
                width: .3,
              ),
            ),
            child: TextFormField(
              textAlign: TextAlign.right,
              cursorColor:const Color(0xFF22A39F),
              keyboardType: keyboardType,
              obscureText:obscureText!,
              validator: (data) {
                if (data!.isEmpty) {
                  return 'field is required';
                }
              },
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle:Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.normal,
                  fontSize: 12
              ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}