import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twnsqr/models/activityModel.dart';
import 'package:twnsqr/provider/categoryProvider.dart';
import 'package:twnsqr/widgets/activityWidget.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {

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

    return SingleChildScrollView(
      child: SizedBox(
        height: 700,
        width: 320,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: ListView.builder(
            key: ValueKey(categoryProvider.selectedCategory),
            scrollDirection: Axis.vertical,
            itemCount: filteredActivities.length,
            itemBuilder: (context, index) {
              return ActivityWidget(
                time: filteredActivities[index].time,
                duration: filteredActivities[index].duration,
                title: filteredActivities[index].title,
                location: filteredActivities[index].location,
                spots: filteredActivities[index].spots,
                price: filteredActivities[index].price,
              );
            },
          ),
        ),
      ),
    );
  }
}
