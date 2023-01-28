import 'package:flutter/material.dart';

class Menu {
  final String category;
  final String meal;
  final String name;
  final String ingredient;
  final int dose;
  final int kcal;
  final int totalkcal;

  Menu({
    required this.category,
    required this.meal,
    required this.name,
    required this.ingredient,
    required this.dose,
    required this.kcal,
    required this.totalkcal,
  });
}
