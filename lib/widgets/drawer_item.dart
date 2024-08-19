import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/widgets/notselected_and_selected_draweritem.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.isSelected, required this.drawerModel});
  final bool isSelected;
  final DrawerModel drawerModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedDrawerItem(drawerModel: drawerModel)
        : NotSelectedDrawerItem(drawerModel: drawerModel);
  }
}
