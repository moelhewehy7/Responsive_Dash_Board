import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'package:responsive_dash_board/widgets/days_container.dart';

class PorojectStatisticHeader extends StatefulWidget {
  const PorojectStatisticHeader({
    super.key,
  });
  static List items = ["30 days", "90 days", "6 months", "12 monts"];

  @override
  State<PorojectStatisticHeader> createState() =>
      _PorojectStatisticHeaderState();
}

class _PorojectStatisticHeaderState extends State<PorojectStatisticHeader> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Poroject statistic", style: AppStyles.styleRegular36(context)),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(Assets.imagesPorojectstatistic),
        const Spacer(),
        Row(
          children: PorojectStatisticHeader.items.asMap().entries.map((e) {
            int index = e.key;
            return GestureDetector(
                onTap: () {
                  selectedindex = index;
                  setState(() {});
                },
                child: DaysContainer(
                    isSelected: selectedindex == index, text: e.value));
          }).toList(),
        )
      ],
    );
  }
}
