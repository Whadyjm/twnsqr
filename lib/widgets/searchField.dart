import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
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
          hintStyle: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
