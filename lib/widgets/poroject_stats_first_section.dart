import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_gridview_builder.dart';

import 'package:responsive_dash_board/widgets/project_stats_chart.dart';

class PorojectStatisticTopSection extends StatelessWidget {
  const PorojectStatisticTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(child: PorojectStatisticChart()),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: CustomGridView(),
        )
      ]),
    );
  }
}
