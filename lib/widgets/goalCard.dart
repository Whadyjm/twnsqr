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
    return Center(
      child: Container(
        padding: EdgeInsets.all(5),
        height: 155,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(2, 3),
            )
          ],
          color: Colors.blue.shade100
        ),
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("You're close to your goal!", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),),
                    const Text('Join more sport activities to collect\nmore points', style: TextStyle(color: Colors.black),),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        CustomButton(
                          width: 80,
                          height: 30,
                          text: 'Join now',
                          fontColor: Colors.white, color: Colors.black,),
                        const SizedBox(width: 18,),
                        CustomButton(
                          width: 80,
                          height: 30,
                          text: 'My points',
                          fontColor: Colors.white, color: Colors.black,),
                      ],
                    )
                  ],
                ),
              ),
              const ProgressBar(),
            ],
          ),
        ),
      ),
    );
  }
}
