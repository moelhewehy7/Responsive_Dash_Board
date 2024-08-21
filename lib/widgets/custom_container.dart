import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.color,
      required this.padding,
      required this.borderRadius,
      required this.widget});
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final Widget widget;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
            color: color ?? const Color(0xFFf8f8fb)),
        child: widget);
  }
}
