import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TrafficSourcesListTile extends StatelessWidget {
  const TrafficSourcesListTile({
    super.key,
    required this.color,
    required this.title,
  });
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 22,
        width: 30,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
      title: Text(
        title,
        style: AppStyles.styleRegular12(context)
            .copyWith(color: const Color(0xff000000)),
      ),
      trailing: Text("50", style: AppStyles.styleRegular12(context)),
    );
  }
}
