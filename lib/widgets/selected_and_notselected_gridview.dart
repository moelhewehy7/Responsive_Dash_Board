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
    double width = MediaQuery.of(context).size.width;
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
        padding: EdgeInsets.symmetric(
          horizontal: width <= 415 ? 10 : 32,
          vertical: width <= 415 ? 10 : 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  gridModel.image,
                  colorFilter: const ColorFilter.mode(
                      Color(0xffFDFDFD), BlendMode.srcIn),
                ),
                const Spacer(),
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
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  gridModel.title,
                  style: AppStyles.styleMedium26(context).copyWith(
                    fontSize: 32,
                    color: const Color(0xfff6f6fb),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                gridModel.subtitle,
                style: AppStyles.styleMedium14(context)
                    .copyWith(color: const Color(0xfff6f6fb)),
              ),
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
    double width = MediaQuery.of(context).size.width;
    return CustomContainer(
      padding: EdgeInsets.symmetric(
        horizontal: width <= 415 ? 10 : 32,
        vertical: width <= 415 ? 10 : 32,
      ),
      borderRadius: 32,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                gridModel.image,
                colorFilter:
                    const ColorFilter.mode(Color(0xff7166F9), BlendMode.srcIn),
              ),
              const Spacer(),
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
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                gridModel.title,
                style: AppStyles.styleMedium26(context).copyWith(
                  fontSize: 32,
                  color: const Color(0xff2b2f42),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              gridModel.subtitle,
              style: AppStyles.styleMedium14(context)
                  .copyWith(color: const Color(0xff636676)),
            ),
          )
        ],
      ),
    );
  }
}
