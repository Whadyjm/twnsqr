import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// TODO: establecer fecha real!!
        const Text('Tues, Nov 12', style: TextStyle(fontSize: 15, color: Colors.grey),),
        SizedBox(
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_rounded, size: 30,)),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(radius: 18,),
                ),
              ],
            ))
      ],
    );
  }
}