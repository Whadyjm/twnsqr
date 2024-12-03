import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DayLine extends StatefulWidget {
  const DayLine({super.key});

  @override
  State<DayLine> createState() => _DayLineState();
}

class _DayLineState extends State<DayLine> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        SizedBox(
          height: 700,
          child: VerticalDivider(
            color: Colors.grey.shade300,
            thickness: 2,
            width: 12,
            indent: 10,
          ),
        ),
        Container(
          width: 12,
          height: 12,
          decoration: const BoxDecoration(
            color: Colors.yellow,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
