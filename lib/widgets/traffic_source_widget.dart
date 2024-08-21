import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/circular_percentage_indicator.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/traffic_sources_ListTile.dart';
import '../utils/app_styles.dart';

class TrafficSourceWidget extends StatelessWidget {
  const TrafficSourceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.only(left: 33, right: 33, top: 30, bottom: 10),
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
                          left: 45, right: 55, top: 10, bottom: 10),
                      widget: Row(
                        children: [
                          Text(
                            "sourse",
                            style: AppStyles.styleRegular12
                                .copyWith(color: const Color(0xffa9a9a9)),
                          ),
                          const Spacer(),
                          Text(
                            "Traffic sourse,%",
                            style: AppStyles.styleRegular12
                                .copyWith(color: const Color(0xffa9a9a9)),
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
    );
  }
}
