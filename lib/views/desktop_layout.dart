import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/dashboard_header.dart';
import 'package:responsive_dash_board/widgets/poroject_stats_first_section.dart';
import 'package:responsive_dash_board/widgets/project_header.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/poroject_statistic_bottom_section.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
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
                      DashboardDesktopHeader(),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      ProjectStatisticHeaderForDesktop(),
                      SizedBox(
                        height: 35,
                      ),
                      PorojectStatisticTopSection(),
                      SizedBox(
                        height: 30,
                      ),
                      PorojectStatisticBottomSection(),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(
          width: 50,
        )
      ],
    );
  }
}
