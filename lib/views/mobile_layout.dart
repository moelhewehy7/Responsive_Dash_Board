import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_gridview_builder.dart';

import 'package:responsive_dash_board/widgets/dashboard_header.dart';
import 'package:responsive_dash_board/widgets/project_header.dart';
import 'package:responsive_dash_board/widgets/traffic_source_desktop.dart';
import 'package:responsive_dash_board/widgets/traffic_source_smaller_desktop.dart';

import '../widgets/project_stats_chart.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                DashboardHeader(),
              ],
            ),
          ),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: PorojectStatisticHeaderforMob()),
                  const SizedBox(
                    height: 20,
                  ),
                  const Expanded(child: PorojectStatisticChart()),
                  const SizedBox(
                    height: 20,
                  ),
                  const Expanded(child: CustomGridView()),
                  width <= 490
                      ? const TrafficSourceForSmallerDesktop()
                      : const TrafficSourceDesktop(),
                  const SizedBox(
                    height: 20,
                  ),
                  width <= 490
                      ? const TrafficSourceForSmallerDesktop()
                      : const TrafficSourceDesktop(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
