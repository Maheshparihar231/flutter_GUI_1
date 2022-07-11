// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeetype;
  final bool isselected;
  final VoidCallback onTap;
  CoffeeType({
    required this.coffeetype,
    required this.isselected,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeetype,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isselected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
