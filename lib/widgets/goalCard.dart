import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:twnsqr/widgets/customButton.dart';
import 'package:twnsqr/widgets/customTitle.dart';
import 'package:twnsqr/widgets/progressBar.dart';

class GoalCard extends StatelessWidget {
  const GoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
          )
        ],
        color: Colors.blue.shade200
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("You're close to your goal!", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),),
                const Text('Join more sport activities to collect more points', style: TextStyle(color: Colors.black),),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    CustomButton(
                      width: 80,
                      height: 30,
                      text: 'Join now',
                      fontColor: Colors.white,),
                    const SizedBox(width: 18,),
                    CustomButton(
                      width: 80,
                      height: 30,
                      text: 'My points',
                      fontColor: Colors.white,),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 30,),
          const ProgressBar(),
        ],
      ),
    );
  }
}
