import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        Expanded(
            flex: 2,
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
