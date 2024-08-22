import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';

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
      contentPadding: EdgeInsets.zero,
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
