import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/grid_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_container.dart';

class GridViewSelectedItem extends StatelessWidget {
  const GridViewSelectedItem({
    super.key,
    required this.gridModel,
  });
  final GridModel gridModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      // Adjust based on your needs
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xC34DB8F2),
            Color(0x6C4DB8F2),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFE048D7),
            offset: Offset(0, 5), // Horizontal and vertical offset
            blurRadius: 20, // Softness of the shadow
            spreadRadius: -10, // Controls the size of the shadow
          ),
        ],
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  gridModel.image,
                  colorFilter: const ColorFilter.mode(
                      Color(0xffFDFDFD), BlendMode.srcIn),
                ),
                Row(
                  children: [
                    Icon(gridModel.icon, color: gridModel.color
                        // Color(0xFF14ED44)
                        ),
                    Text(
                      gridModel.percentage,
                      style: AppStyles.styleRegular12(context).copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            Text(
              gridModel.title,
              style: AppStyles.styleMedium26(context).copyWith(
                fontSize: 30,
                color: const Color(0xfff6f6fb),
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              gridModel.subtitle,
              style: AppStyles.styleMedium14(context)
                  .copyWith(color: const Color(0xfff6f6fb)),
            )
          ],
        ),
      ),
    );
  }
}

class GridViewNotSelectedItem extends StatelessWidget {
  const GridViewNotSelectedItem({
    super.key,
    required this.gridModel,
  });

  final GridModel gridModel;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      borderRadius: 32,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                gridModel.image,
                colorFilter:
                    const ColorFilter.mode(Color(0xff7166F9), BlendMode.srcIn),
              ),
              Row(
                children: [
                  Icon(
                    gridModel.icon,
                    color: gridModel.color,
                  ),
                  Text(
                    gridModel.percentage,
                    style: AppStyles.styleRegular12(context).copyWith(
                      color: const Color(0xff000000),
                    ),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          Text(
            gridModel.title,
            style: AppStyles.styleMedium26(context).copyWith(
              fontSize: 30,
              color: const Color(0xff2b2f42),
            ),
            textAlign: TextAlign.left,
          ),
          Text(
            gridModel.subtitle,
            style: AppStyles.styleMedium14(context)
                .copyWith(color: const Color(0xff636676)),
          )
        ],
      ),
    );
  }
}
