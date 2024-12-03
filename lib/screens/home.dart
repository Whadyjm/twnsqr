import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:twnsqr/widgets/activities.dart';
import 'package:twnsqr/widgets/categories.dart';
import 'package:twnsqr/widgets/customAppbar.dart';
import 'package:twnsqr/widgets/customTitle.dart';
import 'package:twnsqr/widgets/dayLine.dart';
import 'package:twnsqr/widgets/goalCard.dart';
import 'package:twnsqr/widgets/searchField.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            const CustomAppbar(),
            /// TODO: detect real location
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CustomTitle(
                text: 'This week in Estepona',
                size: 22,),
            ),
            const SizedBox(height: 25,),
            const GoalCard(),
            const SizedBox(height: 20,),
            const SearchField(),
            const Categories(),
            const SizedBox(height: 30,),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DayLine(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Today', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('/tuesday', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    Activities(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
