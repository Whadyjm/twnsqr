import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.color,
    required this.fontColor,
    this.onPressed
  });

  double height;
  double width;
  String text;
  Color color;
  Color fontColor;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.transparent,
      minWidth: width,
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.all(5),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Center(child: Text(text, style: TextStyle(fontFamily: 'sf-pro-display', color: fontColor),)),
      ),
    );
  }
}
