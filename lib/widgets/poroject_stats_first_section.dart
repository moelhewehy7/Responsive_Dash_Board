import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/project_stats_chart.dart';

class PorojectStatisticTopSection extends StatelessWidget {
  const PorojectStatisticTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: PorojectStatisticChart()),
        // Expanded(
        //   child: GridView.builder(
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //     ),
        //     itemCount: 2,
        //     itemBuilder: (BuildContext context, int index) {
        //       return Card(child: Center(child: Text('Item $index')));
        //       ;
        //     },
        //   ),
        // ),
      ],
    );
  }
}
