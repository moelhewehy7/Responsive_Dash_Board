import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CircularPercentageIndicator extends StatelessWidget {
  const CircularPercentageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFFF3F3F9), // Circle border color
          width: 18, // Circle border width
        ),
      ), // Outer circle diameter
      child: CircularPercentIndicator(
        radius: 80,
        lineWidth: 20,
        percent: 0.5,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("50%",
                style: AppStyles.styleMedium32
                    .copyWith(color: const Color(0xff000000))),
            Text("Direct ",
                style: AppStyles.styleRegular12
                    .copyWith(color: const Color(0xff9b9b9b)))
          ],
        ),
        backgroundColor: const Color(0xFFE17CFD),
        progressColor: const Color(0xFF4CD7F6),
        circularStrokeCap: CircularStrokeCap.round,
      ),
    );
  }
}
