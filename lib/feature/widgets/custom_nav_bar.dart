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
  final List<int> _navigationHistory = [0];

  final List<String> icons = [
    ImageAndIconConst.navIcon1,
    ImageAndIconConst.navIcon2,
    ImageAndIconConst.navIcon3,
    ImageAndIconConst.navIcon4,
    ImageAndIconConst.navIcon5,
    ImageAndIconConst.navIcon6,
  ];

  /// Call this method from outside when user goes back to home
  void resetToHome() {
    setState(() {
      selectedIndex = 1;
      _navigationHistory.clear();
      _navigationHistory.add(1);
    });
    widget.onItemSelected(1);
  }

  void _handleBackPress() {
    if (selectedIndex == 0) {
      // Close the app when on index 0
      Navigator.of(context).pop();
    } else if (_navigationHistory.length > 1) {
      setState(() {
        _navigationHistory.removeLast();
        selectedIndex = _navigationHistory.last;
        widget.onItemSelected(selectedIndex);
      });
    } else {
      Navigator.of(context).maybePop();
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ModalRoute.of(context)?.addScopedWillPopCallback(() async {
        _handleBackPress();
        return false;
      });
    });
  }

  @override
  void dispose() {
    ModalRoute.of(context)?.removeScopedWillPopCallback(() async {
      _handleBackPress();
      return false;
    });
    super.dispose();
  }

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
              if (selectedIndex != index) {
                setState(() {
                  selectedIndex = index;
                  if (index == 0) {
                    _navigationHistory
                      ..clear()
                      ..add(0);
                  } else {
                    _navigationHistory.add(index);
                  }
                });
                widget.onItemSelected(index);
              }
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
