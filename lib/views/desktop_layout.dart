import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/circular_percentage_indicator.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/dashboard_header.dart';

import 'package:responsive_dash_board/widgets/project_header.dart';
import 'package:responsive_dash_board/widgets/traffic_sources_ListTile.dart';

import '../utils/app_styles.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/custom_linechart.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 50,
        ),
        Expanded(
            flex: 2,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const DashboardHeader(),
                      const SizedBox(
                        height: 60,
                      ),
                      const PorojectStatisticHeader(),
                      const SizedBox(
                        height: 35,
                      ),
                      CustomContainer(
                        padding: const EdgeInsets.all(50),
                        borderRadius: 40,
                        widget: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total visits",
                                  style: AppStyles.styleRegular20,
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "42,43M",
                                  style: AppStyles.styleMedium32
                                      .copyWith(color: const Color(0xff7166f9)),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const Divider(
                              color: Color(0xffC4C4C4),
                              height: 40,
                            ),
                            const CustomLineChart(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomContainer(
                        padding: const EdgeInsets.only(
                            left: 33, right: 33, top: 30, bottom: 10),
                        borderRadius: 32,
                        widget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Traffic Sources",
                                style: AppStyles.styleRegular20
                                    .copyWith(color: const Color(0xff000000))),
                            const Divider(
                              color: Color(0xffC4C4C4),
                              height: 40,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      CustomContainer(
                                        color: const Color(0xFFEFEFF8),
                                        borderRadius: 12,
                                        padding: const EdgeInsets.only(
                                            left: 45,
                                            right: 55,
                                            top: 5,
                                            bottom: 5),
                                        widget: Row(
                                          children: [
                                            Text(
                                              "sourse",
                                              style: AppStyles.styleRegular12
                                                  .copyWith(
                                                      color: const Color(
                                                          0xffa9a9a9)),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "Traffic sourse,%",
                                              style: AppStyles.styleRegular12
                                                  .copyWith(
                                                      color: const Color(
                                                          0xffa9a9a9)),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 17,
                                      ),
                                      const TrafficSourcesListTile(
                                        color: Color(0xFF4CD7F6),
                                        title: "Direct",
                                      ),
                                      const TrafficSourcesListTile(
                                        color: Color(0xFFE17CFD),
                                        title: "Search",
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const CircularPercentageIndicator(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            )),
        const SizedBox(
          width: 50,
        )
      ],
    );
  }
}
