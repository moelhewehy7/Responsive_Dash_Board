import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

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

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 0,
        child: CustomScrollView(slivers: [
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 38,
          )),
          SliverToBoxAdapter(
              child: ListTile(
                  leading: Container(
                    width: 52,
                    height: 51,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFE17CFD),
                          Color(0xFF4CD7F6),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(134, 76, 215, 246),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(4, -4),
                        ),
                      ],
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                  title: Text(
                    'Concured',
                    style: AppStyles.styleMedium20,
                  )))
        ]));
  }
}
