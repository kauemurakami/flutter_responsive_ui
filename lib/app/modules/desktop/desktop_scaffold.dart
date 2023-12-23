import 'package:flutter/material.dart';
import 'package:responsive_ui_web_app/app/core/utils/theme/colors.dart';
import 'package:responsive_ui_web_app/app/widgets/app_bar.dart';
import 'package:responsive_ui_web_app/app/widgets/drawer.dart';
import 'package:responsive_ui_web_app/app/widgets/my_box.dart';
import 'package:responsive_ui_web_app/app/widgets/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackground,
      appBar: const MyAppBar(),
      body: Row(
        children: [
          //open drawer
          const MyDrawer(),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4.0,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) => const MyBox(),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    primary: true,
                    shrinkWrap: true,
                    itemCount: 9,
                    itemBuilder: (context, index) => const MyTile(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.pink,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
