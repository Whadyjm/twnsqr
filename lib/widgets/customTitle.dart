import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('This week in Estepona',
      style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),);
  }
}
