import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/listtile_header.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width <= 480) {
      return const DashboardMobileHeader();
    } else {
      return const DashboardDesktopHeader();
    }
  }
}

class DashboardDesktopHeader extends StatelessWidget {
  const DashboardDesktopHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListTileHeader(
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
        const SizedBox(
          width: 25,
        ),
        SvgPicture.asset(Assets.imagesBoroteamadd),

        // ignore: prefer_const_constructors
        Spacer(),
        ListTileHeader(
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Center(
                child: Image.asset(
                  Assets.imagesZahra,
                ),
              ),
            ),
            title: 'Zahra hasht..'),
      ],
    );
  }
}

class DashboardMobileHeader extends StatelessWidget {
  const DashboardMobileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ListTileHeader(
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
            const SizedBox(
              width: 25,
            ),
            Flexible(
                child: ConstrainedBox(
              // ignore: prefer_const_constructors
              constraints: BoxConstraints(maxWidth: 30, minWidth: 15),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset(Assets.imagesBoroteamadd)),
            )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ListTileHeader(
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Center(
                child: Image.asset(
                  Assets.imagesZahra,
                ),
              ),
            ),
            title: 'Zahra hasht..'),
      ],
    );
  }
}
