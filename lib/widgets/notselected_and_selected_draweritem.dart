import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class NotSelectedDrawerItem extends StatelessWidget {
  const NotSelectedDrawerItem({
    super.key,
    required this.drawerModel,
    this.color,
  });
  final DrawerModel drawerModel;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 38),
            child: SvgPicture.asset(
              drawerModel.image,
              colorFilter:
                  ColorFilter.mode(color ?? Color(0xFF000000), BlendMode.srcIn),
            ),
          ),
          const SizedBox(
              width: 18), // Optional: Add space between leading and title
          Expanded(
            child: Text(
              drawerModel.title,
              style: AppStyles.styleRegular14.copyWith(
                color: color ?? const Color(0xFF000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedDrawerItem extends StatelessWidget {
  const SelectedDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFf4f4fb), Color(0xFFf3f3fb),
            Color(0xFFf2f2fb), // End color
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 38),
            child: SvgPicture.asset(
              drawerModel.image,
              colorFilter:
                  const ColorFilter.mode(Color(0xFF7166F9), BlendMode.srcIn),
            ),
          ),
          const SizedBox(
              width: 18), // Optional: Add space between leading and title
          Expanded(
            child: Text(
              drawerModel.title,
            ),
          ),
          Container(
            width: 3.27,
            height: 64, // Adjust height as needed
            decoration: BoxDecoration(
              color: const Color(0xFFbebafb),
              borderRadius:
                  BorderRadius.circular(4), // Optional: add rounded corners
            ),
          ),
        ],
      ),
    );
  }
}
