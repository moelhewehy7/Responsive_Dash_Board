import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';

import '../widgets/custom_drawer.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            child: Container(
          color: Colors.green,
        )),
        Expanded(
            child: Container(
          color: Colors.blue,
        ))
      ],
    );
  }
}
