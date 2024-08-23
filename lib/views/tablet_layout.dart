import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_GridView.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_header.dart';
import 'package:responsive_dash_board/widgets/traffic_source_desktop.dart';

import '../widgets/project_stats_chart.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 50,
        ),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      // ignore: prefer_const_constructors
                      DashboardHeader(),
                    ],
                  ),
                ),
                SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35,
                        ),
                        Expanded(child: PorojectStatisticChart()),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(child: CustomGridView()),
                        TrafficSourceDesktop(),
                        SizedBox(
                          height: 20,
                        ),
                        TrafficSourceDesktop()
                        // SizedBox(
                        //   height: 30,
                        // ),
                        // // PorojectStatisticBottomSection(),
                        // SizedBox(
                        //   height: 30,
                        // ),
                      ],
                    ))
              ],
            )),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
