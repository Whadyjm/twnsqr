import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryButtons extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final ValueChanged<String> onCategorySelected;

  const CategoryButtons({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: categories.map((category) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: (){
              onCategorySelected(category);
            },
            child: Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: selectedCategory == category ? Colors.purple.shade200:Colors.purple.shade100
              ),
              child: Center(
                child: Stack(
                    children: [
                      Text(category ?? '', style: const TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500))
                    ] ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}