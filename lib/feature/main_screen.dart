import 'package:flutter/material.dart';
import 'package:naculisgammingapp/feature/home/screens/game_level_screen.dart';
import 'package:naculisgammingapp/feature/leader_board/screens/leader_board_screen.dart';
import 'package:naculisgammingapp/feature/quest/quest.dart';
import 'package:naculisgammingapp/feature/shop/screen/shop_screen1.dart';
import 'package:naculisgammingapp/feature/speak/screens/chat_with_bot.dart';
import 'package:naculisgammingapp/feature/user_profile/screens/profile_screen.dart';
import 'package:naculisgammingapp/feature/widgets/custom_appbar.dart';
import 'package:naculisgammingapp/feature/widgets/custom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = List.generate(
    6,
    (index) => GlobalKey<NavigatorState>(),
  );

  final List<Widget> _screens = [
    GameLevelScreen(),
    ChatWithBotScreen(),
    LeaderBoardScreen(),
    QuestScreen(),
    ShopScreen1(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: List.generate(_screens.length, (index) {
          return Offstage(
            offstage: _currentIndex != index,
            child: Navigator(
              key: _navigatorKeys[index],
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(builder: (context) => _screens[index]);
              },
            ),
          );
        }),
      ),
      bottomNavigationBar: CustomNavbar(
        onItemSelected: (index) {
          if (_currentIndex == index) {
            // Optional: pop to first screen when the same tab is tapped again
            _navigatorKeys[index].currentState?.popUntil(
              (route) => route.isFirst,
            );
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}
