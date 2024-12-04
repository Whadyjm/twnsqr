import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:twnsqr/models/activityModel.dart';
import 'package:twnsqr/provider/categoryProvider.dart';
import 'package:twnsqr/widgets/activities.dart';
import 'package:twnsqr/widgets/categoryButtons.dart';
import 'package:twnsqr/widgets/customAppbar.dart';
import 'package:twnsqr/widgets/customTitle.dart';
import 'package:twnsqr/widgets/dayLine.dart';
import 'package:twnsqr/widgets/goalCard.dart';
import 'package:twnsqr/widgets/searchField.dart';

/// this is the actual home screen
///
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<ActivityModel> activityList = [
    ActivityModel(
        category: 'Sports',
        time: '08:00',
        duration: '(60 min)',
        title: 'Beach Yoga',
        location: 'La Playa de la Rada',
        spots: '8',
        price: '9€'),
    ActivityModel(
        category: 'Creative',
        time: '09:00',
        duration: '(60 min)',
        title: 'Painting',
        location: 'Art School',
        spots: '3',
        price: '15€'),
    ActivityModel(
        category: 'Sports',
        time: '12:30',
        duration: '(45 min)',
        title: '5-a-side Football',
        location: 'Municipal Sports Center',
        spots: '0',
        price: '19€'),
    ActivityModel(
        category: 'Food',
        time: '13:15',
        duration: '(60 min)',
        title: 'Pizza Class',
        location: 'Little Italy Rest.',
        spots: '5',
        price: '12€')
  ];

  @override
  Widget build(BuildContext context) {

    final categoryProvider = Provider.of<CategoryProvider>(context);

    List<ActivityModel> filteredActivities = categoryProvider.selectedCategory == 'All'
        ? activityList
        : activityList.where((activity) => activity.category == categoryProvider.selectedCategory).toList();


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            const CustomAppbar(), /// the appBar implementation with date, notification icon and user avatar
            /// TODO: detect real location
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CustomTitle(
                text: 'This week in Estepona', /// the main title, showing the user current location
                size: 22,),
            ),
            const SizedBox(height: 25,),
            const GoalCard(),  /// widget for goal card, with progress bar
            const SizedBox(height: 20,),
            const SearchField(), /// Search text field
            Center(           /// this is the array of buttons used to filter the desired category
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
                      CategoryButtons( /// widget for caterogy buttons
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
                DayLine(), ///this widget shows the vertical line with yellow dot
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Today', style: TextStyle(fontFamily: 'sf-pro-display', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('/tuesday', style: TextStyle(fontFamily: 'sf-pro-display', color: Colors.grey),)
                      ],
                    ),
                    Activities(), /// widget for the list of activities card
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
