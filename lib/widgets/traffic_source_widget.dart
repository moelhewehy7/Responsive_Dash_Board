import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/circular_percentage_indicator.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';
import 'package:responsive_dash_board/widgets/traffic_source_desktop.dart';
import 'package:responsive_dash_board/widgets/traffic_source_smaller_desktop.dart';
import 'package:responsive_dash_board/widgets/traffic_sources_ListTile.dart';
import '../utils/app_styles.dart';

class TrafficSourceWidget extends StatelessWidget {
  const TrafficSourceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    double width = MediaQuery.of(context).size.width;
    if (width >= 850 && width < 1280) {
      return const TrafficSourceForSmallerDesktop();
    } else {
      return const TrafficSourceDesktop();
    }
  }
}
