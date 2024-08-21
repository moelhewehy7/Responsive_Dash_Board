import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import '../utils/app_styles.dart';
import '../widgets/custom_linechart.dart';

class PorojectStatisticChart extends StatelessWidget {
  const PorojectStatisticChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.all(50),
      borderRadius: 40,
      widget: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total visits",
                style: AppStyles.styleRegular20,
                textAlign: TextAlign.left,
              ),
              Text(
                "42,43M",
                style: AppStyles.styleMedium32
                    .copyWith(color: const Color(0xff7166f9)),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          const Divider(
            color: Color(0xffC4C4C4),
            height: 40,
          ),
          const CustomLineChart(),
        ],
      ),
    );
  }
}
