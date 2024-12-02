import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twnsqr/widgets/customAppbar.dart';
import 'package:twnsqr/widgets/customTitle.dart';
import 'package:twnsqr/widgets/goalCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            /// TODO: detectar locación real
            CustomTitle(),
            const SizedBox(height: 25,),
            GoalCard(),
          ],
        ),
      ),
    );
  }
}
