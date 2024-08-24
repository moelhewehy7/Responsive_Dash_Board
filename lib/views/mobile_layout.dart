// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_GridView.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                DashboardHeader(),
              ],
            ),
          ),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: PorojectStatisticHeaderforMob()),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(child: PorojectStatisticChart()),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(child: CustomGridView()),
                  width <= 450
                      ? TrafficSourceForSmallerDesktop()
                      : TrafficSourceDesktop(),
                  SizedBox(
                    height: 20,
                  ),
                  width <= 450
                      ? TrafficSourceForSmallerDesktop()
                      : TrafficSourceDesktop(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
