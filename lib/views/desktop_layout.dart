import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/dashboard_header.dart';

import 'package:responsive_dash_board/widgets/project_header.dart';

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
                            left: 33, right: 33, top: 30, bottom: 24),
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
                            const CustomContainer(
                              color: Color(0xFFEFEFF8),
                              borderRadius: 12,
                              padding: EdgeInsets.only(
                                  left: 45, right: 55, top: 5, bottom: 5),
                              widget: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "sourse",
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffa9a9a9),
                                      height: 32 / 12,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    "Traffic sourse,%",
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffb2b2b3),
                                      height: 32 / 12,
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                            CircularPercentageIndicator(),
                          ],
                        ),
                      ),
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

class CircularPercentageIndicator extends StatelessWidget {
  const CircularPercentageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80,
      lineWidth: 20,
      percent: 0.5,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("50%",
              style: AppStyles.styleMedium32
                  .copyWith(color: const Color(0xff000000))),
          Text("Direct ",
              style: AppStyles.styleRegular12
                  .copyWith(color: const Color(0xff9b9b9b)))
        ],
      ),
      backgroundColor: const Color(0xFFE17CFD),
      progressColor: const Color(0xFF4CD7F6),
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
