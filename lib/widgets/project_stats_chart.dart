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
    double width = MediaQuery.of(context).size.width;
    return CustomContainer(
      padding: EdgeInsets.all(width <= 450 ? 10 : 50),
      borderRadius: 40,
      widget: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total visits",
                style: AppStyles.styleRegular20(context),
                textAlign: TextAlign.left,
              ),
              Text(
                "42,43M",
                style: AppStyles.styleMedium32(context)
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
