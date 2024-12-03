import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 5,
              blurRadius: 3,
              offset: const Offset(1, 2)
            )
          ],
        ),
        child: TextField(
          onChanged: (value){},
          textCapitalization: TextCapitalization.words,
          onSubmitted: (value) {},
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: Colors.white,
            prefix: const SizedBox(width: 30,),
            suffixIcon: const Icon(Icons.search_rounded, color: Colors.grey, size: 35,),
            hintText: 'What do you feel like doing?',
            hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey.shade300),
          ),
        ),
      ),
    );
  }
}
