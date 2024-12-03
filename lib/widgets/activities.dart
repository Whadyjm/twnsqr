import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twnsqr/models/activityModel.dart';
import 'package:twnsqr/widgets/activityWidget.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {

  List<ActivityModel> activityList = [
    ActivityModel(
        time: '08:00',
        duration: '(60 min)',
        title: 'Beach Yoga',
        location: 'La Playa de la Rada',
        spots: '8',
        price: '9€'),
    ActivityModel(
        time: '09:00',
        duration: '(60 min)',
        title: 'Reformer Pilates',
        location: 'Wellness Studio',
        spots: '3',
        price: '15€'),
    ActivityModel(
        time: '12:30',
        duration: '(45 min)',
        title: '5-a-side Football',
        location: 'Municipal Sports Center',
        spots: '0',
        price: '19€'),
    ActivityModel(
        time: '13:15',
        duration: '(60 min)',
        title: 'Spa & Sauna',
        location: 'Spa Center',
        spots: '5',
        price: '12€')
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SizedBox(
          height: 500,
          width: 500,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index){
                return ActivityWidget(
                  time: activityList[index].time,
                  duration: activityList[index].duration,
                  title: activityList[index].title,
                  location: activityList[index].location,
                  spots: activityList[index].spots,
                  price: activityList[index].price,);
              },
          ),
        ),
      ),
    );
  }
}
