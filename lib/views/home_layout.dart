import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/desktop_layout.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const Center(
                child: Text('Mobile'),
              ),
          tabletLayout: (context) => const Center(
                child: Text('Tablet'),
              ),
          desktopLayout: (context) => const DeskTopLayout()),
    );
  }
}
