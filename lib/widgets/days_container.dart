import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';

class DaysContainer extends StatelessWidget {
  const DaysContainer(
      {super.key, required this.text, required this.isSelected});
  final String text;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF7f76fa) : const Color(0xFFf7f7fb),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Text(text,
          style: AppStyles.styleBold14.copyWith(
              color: isSelected ? Colors.white : const Color(0xFF2B2F42))),
    );
  }
}
