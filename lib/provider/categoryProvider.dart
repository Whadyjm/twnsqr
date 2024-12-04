import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier {
  String _selectedCategory = 'All';
  final List<String> _categories = ['All', 'Sports', 'Food','Kids', 'Creative'];

  String get selectedCategory => _selectedCategory;
  List<String> get categories => _categories;

  void selectCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }
}