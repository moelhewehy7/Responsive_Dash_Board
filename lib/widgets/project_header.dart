import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import 'package:responsive_dash_board/widgets/days_container.dart';

class ProjectStatisticHeaderForDesktop extends StatefulWidget {
  const ProjectStatisticHeaderForDesktop({
    super.key,
  });
  static List items = ["30 days", "90 days", "6 months", "12 monts"];

  @override
  State<ProjectStatisticHeaderForDesktop> createState() =>
      _ProjectStatisticHeaderForDesktopState();
}

class _ProjectStatisticHeaderForDesktopState
    extends State<ProjectStatisticHeaderForDesktop> {
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
        Spacer(),
        Row(
          children:
              ProjectStatisticHeaderForDesktop.items.asMap().entries.map((e) {
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

class PorojectStatisticHeaderforMob extends StatefulWidget {
  const PorojectStatisticHeaderforMob({
    super.key,
  });
  static List items = ["30 days", "90 days", "6 months", "12 monts"];

  @override
  State<PorojectStatisticHeaderforMob> createState() =>
      _PorojectStatisticHeaderforMobState();
}

class _PorojectStatisticHeaderforMobState
    extends State<PorojectStatisticHeaderforMob> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Poroject statistic",
                style: AppStyles.styleRegular36(context)),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(Assets.imagesPorojectstatistic),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:
              PorojectStatisticHeaderforMob.items.asMap().entries.map((e) {
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
