import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.grey[900],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(46.0);
}
