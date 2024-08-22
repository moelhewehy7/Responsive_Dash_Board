import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/grid_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/grid_Item.dart';
import 'package:responsive_dash_board/widgets/selected_and_notselected_gridview.dart';

class CustomGridView extends StatefulWidget {
  const CustomGridView({
    super.key,
  });

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  List<GridModel> items = [
    GridModel(
        color: const Color(0xFF14ED44),
        image: Assets.imagesBounceRate,
        icon: Icons.arrow_drop_up,
        title: "42,34%",
        subtitle: "Bounce Rate",
        percentage: "12%"),
    GridModel(
        color: const Color(0xFFFD2E00),
        icon: Icons.arrow_drop_down,
        image: Assets.imagesPagespervisit,
        title: "42,34%",
        subtitle: "Pages per visit",
        percentage: "7%"),
    GridModel(
        color: const Color(0xFFFD2E00),
        icon: Icons.arrow_drop_down,
        image: Assets.imagesTotalMonthlyVisit,
        title: "326.60K",
        subtitle: "Total Monthly Visit",
        percentage: "2.1%"),
    GridModel(
        icon: Icons.arrow_drop_down,
        color: const Color(0xFFFD2E00),
        image: Assets.imagesBounceRate,
        title: "00:03:27",
        subtitle: "Avg.Visit Duration",
        percentage: "2.4%"),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 26, crossAxisSpacing: 25,
          crossAxisCount: 2, // Two items per row
          childAspectRatio: 1.2, // Adjust as necessary for item aspect ratio
        ),
        itemCount: 4, // Total number of items
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () {
                if (selectedIndex != index) {
                  selectedIndex = index;
                  setState(() {});
                }
              },
              child: GridItem(
                gridModel: items[index],
                isSelected: selectedIndex == index,
              ));
        },
      ),
    );
  }
}
