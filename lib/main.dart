import 'package:flutter/material.dart';
import 'package:responsive_ui_web_app/app/modules/desktop/desktop_scaffold.dart';
import 'package:responsive_ui_web_app/app/modules/mobile/mobile_scaffold.dart';
import 'package:responsive_ui_web_app/app/modules/tablet/tablet_scaffold.dart';
import 'package:responsive_ui_web_app/app/widgets/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobileScreen: MobileScaffold(),
        tabletScreen: TabletScaffold(),
        desktopScreen: DesktopScaffold(),
      ),
    );
  }
}
