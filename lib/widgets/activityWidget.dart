import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:twnsqr/widgets/customButton.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({
    super.key,
    required this.time,
    required this.duration,
    required this.title,
    required this.location,
    required this.spots,
    required this.price});

  final String time;
  final String duration;
  final String title;
  final String location;
  final String spots;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(top: 5, right: 15, left: 15),
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 5,
              spreadRadius: 0,
              offset: const Offset(2, 5)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(time, style: const TextStyle(fontFamily: 'sf-pro-display', color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),),
                    const SizedBox(width: 10,),
                    Text(duration, style: const TextStyle(fontFamily: 'sf-pro-display', color: Colors.grey),),
                  ],
                ),
                Text(title, style: const TextStyle(fontFamily: 'sf-pro-display', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                Row(
                  children: [
                    const Icon(IconlyLight.location, size: 20, color: Colors.grey,),
                    const SizedBox(width: 5,),
                    Text(location, style: const TextStyle(fontFamily: 'sf-pro-display', color: Colors.grey),)
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(2),
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.perm_identity, color: Colors.grey, size: 18,),
                      const SizedBox(width: 5,),
                      Text('$spots spots left', style: const TextStyle(fontFamily: 'sf-pro-display', color: Colors.grey),)
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(price, style: const TextStyle(fontFamily: 'sf-pro-display', color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                const SizedBox(height: 10,),
                CustomButton(
                  onPressed: (){

                    int.parse(spots) != 0
                        ? ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.black,
                      content: Text('you have joined the activity!', style: TextStyle(fontFamily: 'sf-pro-display'),),
                    ))
                        : null;
                  },
                    width: 70,
                    height: 40,
                    text: int.parse(spots) == 0 ? 'Sold Out':'Join',
                    color: int.parse(spots) == 0 ? Colors.grey:Colors.black,
                    fontColor: Colors.white,),
                const SizedBox(height: 10,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
