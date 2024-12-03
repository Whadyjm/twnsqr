import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:twnsqr/models/categoryModel.dart';
import 'package:twnsqr/widgets/categoryWidget.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List <CategoryModel> categoryList = [
    CategoryModel(widget: const Icon(IconlyBold.filter)), /// TODO: change icon
    CategoryModel(widget: const Text('All', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),)),
    CategoryModel(widget: const Text('Sports', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),)),
    CategoryModel(widget: const Text('Food', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),)),
    CategoryModel(widget: const Text('Kids', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),)),
    CategoryModel(widget: const Text('Creative', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),)),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 50,
        width: 500,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return CategoryWidget(categoria: categoryList[index].widget);
          },
        ),
      ),
    );
  }
}
