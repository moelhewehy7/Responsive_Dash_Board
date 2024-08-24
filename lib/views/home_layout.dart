import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_layout.dart';
import 'package:responsive_dash_board/views/mobile_layout.dart';
import 'package:responsive_dash_board/views/tablet_layout.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: width < 855 ? AppBar() : null,
      drawer: const CustomDrawer(),
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DeskTopLayout()),
    );
  }
}
