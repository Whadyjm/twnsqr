import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:twnsqr/provider/categoryProvider.dart';
import 'package:twnsqr/widgets/activities.dart';
import 'package:twnsqr/widgets/categoryButtons.dart';
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

    final categoryProvider = Provider.of<CategoryProvider>(context);

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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.purple.shade100
                          ),
                          child: const Center(
                            child: Icon(IconlyLight.filter)
                          ),
                        ),
                      ),
                      CategoryButtons(
                        categories: categoryProvider.categories,
                        selectedCategory: categoryProvider.selectedCategory,
                        onCategorySelected: (String category) {
                          categoryProvider.selectCategory(category);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
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
                        Text('Today', style: TextStyle(fontFamily: 'sf-pro-display', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('/tuesday', style: TextStyle(fontFamily: 'sf-pro-display', color: Colors.grey),)
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
