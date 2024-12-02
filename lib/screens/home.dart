import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twnsqr/models/categoryModel.dart';
import 'package:twnsqr/widgets/categories.dart';
import 'package:twnsqr/widgets/categoryWidget.dart';
import 'package:twnsqr/widgets/customAppbar.dart';
import 'package:twnsqr/widgets/customTitle.dart';
import 'package:twnsqr/widgets/goalCard.dart';
import 'package:twnsqr/widgets/searchField.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Step> steps = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbar(),
            /// TODO: detectar locación real
            CustomTitle(
              text: 'This week in Estepona',
              size: 22,),
            const SizedBox(height: 25,),
            const GoalCard(),
            const SizedBox(height: 20,),
            const SearchField(),
            const Categories(),
            // Stepper(steps: steps)
          ],
        ),
      ),
    );
  }
}
