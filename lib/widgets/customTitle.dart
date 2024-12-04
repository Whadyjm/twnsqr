import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  CustomTitle({
    super.key,
  required this.text,
  required this.size});

  String text;
  double size;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(fontFamily: 'sf-pro-display', color: Colors.black, fontSize: size, fontWeight: FontWeight.w600),);
  }
}
