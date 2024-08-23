import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/custom_GridView.dart';

import 'package:responsive_dash_board/widgets/dashboard_header.dart';
import 'package:responsive_dash_board/widgets/project_header.dart';
import 'package:responsive_dash_board/widgets/traffic_source_desktop.dart';

import '../widgets/project_stats_chart.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    print(width);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 50,
        ),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      DashboardDesktopHeader(),
                    ],
                  ),
                ),
                SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        width <= 920 && width > 855
                            ? const PorojectStatisticHeaderforMob()
                            : const ProjectStatisticHeaderForDesktop(),
                        const SizedBox(
                          height: 20,
                        ),
                        const Expanded(child: PorojectStatisticChart()),
                        const SizedBox(
                          height: 20,
                        ),
                        const Expanded(child: CustomGridView()),
                        const TrafficSourceDesktop(),
                        const SizedBox(
                          height: 20,
                        ),
                        const TrafficSourceDesktop()
                      ],
                    ))
              ],
            )),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
