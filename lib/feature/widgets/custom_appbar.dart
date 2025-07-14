import 'package:flutter/material.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';
import 'package:naculisgammingapp/feature/widgets/appbar_items.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppbarItems(icon: ImageAndIconConst.appbarIcon1, count: 5),
                  AppbarItems(icon: ImageAndIconConst.appbarIcon2, count: 3),
                  AppbarItems(icon: ImageAndIconConst.appbarIcon3, count: 5),
                  AppbarItems(icon: ImageAndIconConst.appbarIcon4, count: 300),
                ],
              ),
            ), // your icons row
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100); // adjust as needed
}
