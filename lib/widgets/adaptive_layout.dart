import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      log(" constraints.maxWidth=${constraints.maxWidth.toString()}");
      if (constraints.maxWidth < SizeConfig.tabletSize) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.deskTopSize) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
