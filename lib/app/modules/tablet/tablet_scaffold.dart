import 'package:flutter/material.dart';
import 'package:responsive_ui_web_app/app/core/utils/theme/colors.dart';
import 'package:responsive_ui_web_app/app/widgets/app_bar.dart';
import 'package:responsive_ui_web_app/app/widgets/drawer.dart';
import 'package:responsive_ui_web_app/app/widgets/my_box.dart';
import 'package:responsive_ui_web_app/app/widgets/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      backgroundColor: AppColors.defaultBackground,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4.0,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
    );
  }
}
