import 'package:flutter/cupertino.dart';

class GridModel {
  final String image;
  final Color color;
  final String title;
  final IconData icon;
  final String subtitle;
  final String percentage;

  GridModel({
    required this.image,
    required this.icon,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.percentage,
  });
}
