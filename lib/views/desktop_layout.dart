import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../widgets/custom_drawer.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        Expanded(flex: 2, child: DashboardHeader()),
        Expanded(
            child: Container(
          color: Colors.blue,
        ))
      ],
    );
  }
}

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTileHeader(
              leading: Container(
                width: 52,
                height: 50.03,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF6F6FB),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: Center(child: SvgPicture.asset(Assets.imagesBoroTeam)),
              ),
              title: 'Boro team'),
        ),
        SvgPicture.asset(Assets.imagesBoroteamadd),
        Spacer(),
        Expanded(
          child: ListTileHeader(
              leading: Image.asset(
                Assets.imagesProfilePic,
                height: 50,
              ),
              title: 'Zahra hasht..'),
        ),
      ],
    );
  }
}

class ListTileHeader extends StatelessWidget {
  const ListTileHeader({
    super.key,
    required this.leading,
    required this.title,
  });

  final Widget leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: AppStyles.styleMedium20,
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: ShapeDecoration(
          color: const Color(0xFFF6F6FB),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: const Icon(Icons.arrow_drop_down),
      ),
    );
  }
}
