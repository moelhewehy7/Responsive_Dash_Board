import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/grid_model.dart';
import 'package:responsive_dash_board/widgets/selected_and_notselected_gridview.dart';

class GridItem extends StatelessWidget {
  const GridItem(
      {super.key, required this.isSelected, required this.gridModel});
  final bool isSelected;
  final GridModel gridModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? GridViewSelectedItem(
            gridModel: gridModel,
          )
        : GridViewNotSelectedItem(
            gridModel: gridModel,
          );
  }
}
