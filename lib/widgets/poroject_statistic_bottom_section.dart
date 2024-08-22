import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/traffic_source_widget.dart';

class PorojectStatisticBottomSection extends StatelessWidget {
  const PorojectStatisticBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: TrafficSourceWidget()),
        SizedBox(
          width: 20,
        ),
        Expanded(child: TrafficSourceWidget()),
      ],
    );
  }
}
