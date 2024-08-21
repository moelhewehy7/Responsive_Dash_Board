import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/dashboard_header.dart';
import 'package:responsive_dash_board/widgets/poroject_stats_first_section.dart';
import 'package:responsive_dash_board/widgets/project_header.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/traffic_source_widget.dart';

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
                      DashboardHeader(),
                      SizedBox(
                        height: 60,
                      ),
                      PorojectStatisticHeader(),
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

class PorojectStatisticBottomSection extends StatelessWidget {
  const PorojectStatisticBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TrafficSourceWidget()),
        SizedBox(
          width: 20,
        ),
        Expanded(child: TrafficSourceWidget()),
      ],
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adjust based on your needs
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomRight, // Start from bottom right
          end: Alignment.topLeft, // End at top left
          colors: [
            Color(0xFFE048D7), // First color (Pinkish)
            Color(0xFF4DB7F2),
            // Second color (Light blue)
            Color(0xFFE048D7), // Third color (Blue Violet)
          ],
          // Control the transition between colors
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFE048D7),
            offset: Offset(0, 5), // Horizontal and vertical offset
            blurRadius: 20, // Softness of the shadow
            spreadRadius: -10, // Controls the size of the shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.insert_chart, color: Colors.white),
            const Spacer(),
            const Text(
              '42,34%',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Bounce Rate',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
