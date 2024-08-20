import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

import 'notselected_and_selected_draweritem.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final List<DrawerModel> items = const [
    DrawerModel(image: Assets.imagesOverview, title: 'Overview'),
    DrawerModel(image: Assets.imagesOpportunites, title: 'Opportunities'),
    DrawerModel(image: Assets.imagesMyCompetitors, title: 'My competitors'),
    DrawerModel(image: Assets.imagesBriefs, title: 'Briefs'),
    DrawerModel(image: Assets.imagesSaved, title: 'Saved'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint(DefaultTextStyle.of(context)
        .style
        .fontFamily); //to get the current font family
    return Drawer(
        backgroundColor: const Color(0xFFf6f6fb),
        elevation: 0,
        child: CustomScrollView(slivers: [
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 38,
          )),
          SliverToBoxAdapter(
              child: ListTile(
                  contentPadding: EdgeInsets.only(left: 32),
                  leading: Container(
                    width: 52,
                    height: 51,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFE17CFD),
                          Color(0xFF4CD7F6),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(134, 76, 215, 246),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(4, -4),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.search, color: Colors.white),
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Concured',
                      style: AppStyles.styleMedium20,
                    ),
                  ))),
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 38,
          )),
          SliverList.builder(
            itemBuilder: (context, index) => GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              child: DrawerItem(
                drawerModel: items[index],
                isSelected: selectedIndex == index,
              ),
            ),
            itemCount: items.length,
          ),
          const SliverFillRemaining(
            hasScrollBody: false, // to solve overflow issue
            child: Column(
              children: [
                Spacer(
                  flex: 2,
                ),
                NotSelectedDrawerItem(
                  drawerModel: DrawerModel(
                      image: Assets.imagesSettings, title: "Settings"),
                ),
                NotSelectedDrawerItem(
                    drawerModel:
                        DrawerModel(image: Assets.imagesHelp, title: "Help")),
                NotSelectedDrawerItem(
                    color: Color(0xFF928484),
                    drawerModel: DrawerModel(
                        image: Assets.imagesLogout, title: "Log out")),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          )
        ]));
  }
}
