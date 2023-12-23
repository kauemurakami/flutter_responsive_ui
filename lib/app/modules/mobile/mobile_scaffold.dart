import 'package:flutter/material.dart';
import 'package:responsive_ui_web_app/app/core/utils/theme/colors.dart';
import 'package:responsive_ui_web_app/app/widgets/app_bar.dart';
import 'package:responsive_ui_web_app/app/widgets/drawer.dart';
import 'package:responsive_ui_web_app/app/widgets/my_box.dart';
import 'package:responsive_ui_web_app/app/widgets/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      backgroundColor: AppColors.defaultBackground,
      drawer: const MyDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => const MyBox(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              primary: true,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) => const MyTile(),
            ),
          ),
        ],
      ),
    );
  }
}
