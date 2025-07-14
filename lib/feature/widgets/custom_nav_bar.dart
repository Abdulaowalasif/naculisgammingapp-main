import 'package:flutter/material.dart';

import '../../core/const/image_icon.dart';


class CustomNavbar extends StatefulWidget {
  final ValueChanged<int> onItemSelected;

  const CustomNavbar({super.key, required this.onItemSelected});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int selectedIndex = 0;

  final List<String> icons = [
    ImageAndIconConst.navIcon1,
    ImageAndIconConst.navIcon2,
    ImageAndIconConst.navIcon3,
    ImageAndIconConst.navIcon4,
    ImageAndIconConst.navIcon5,
    ImageAndIconConst.navIcon6,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: 390,
      height: 100,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(icons.length, (index) {
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              widget.onItemSelected(index); // <-- Call the callback
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: isSelected
                    ? Border.all(
                  color: Theme.of(context).colorScheme.tertiary,
                  width: 2,
                )
                    : null,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(icons[index]),
            ),
          );
        }),
      ),
    );
  }
}
