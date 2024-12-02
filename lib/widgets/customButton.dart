import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.fontColor
  });

  double height;
  double width;
  String text;
  Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black,
      ),
      child: Center(child: Text(text, style: TextStyle(color: fontColor),)),
    );
  }
}
