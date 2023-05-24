import 'package:flutter/material.dart';

void navigateTo(context, nextPage) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => nextPage,
  ),
);