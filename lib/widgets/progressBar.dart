import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:twnsqr/widgets/customTitle.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          const SizedBox(
            height: 70,
            width: 70,
            child: CircularProgressIndicator(
              strokeWidth: 8,
              backgroundColor: Colors.white,
              color: Colors.blue,
              value: 0.6,),
          ),
          Positioned(
              bottom: 12,
              left: 15,
              child: CustomTitle(text: '27', size: 35,))
        ]
    );
  }
}
