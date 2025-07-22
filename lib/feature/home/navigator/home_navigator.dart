import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/feature/home/screens/game_level_screen.dart';
import 'package:naculisgammingapp/feature/home/screens/greetings_intro_screen.dart';
import 'package:naculisgammingapp/feature/home/screens/progress_screen.dart';
import 'package:naculisgammingapp/feature/quiz/screens/quiz_screen.dart';
import 'package:naculisgammingapp/feature/quiz/screens/result_screen.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

import '../../../core/const/nav_ids.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({super.key});

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        final canPop = Get.nestedKey(NavIds.home)?.currentState?.canPop() ?? false;
        if (canPop) {
          Get.nestedKey(NavIds.home)?.currentState?.pop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key:Get.nestedKey(NavIds.home),
        initialRoute: RouteName.gameLevel,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case RouteName.gameLevel:
              return MaterialPageRoute(builder: (_) => const GameLevelScreen());
            case RouteName.gameProgress:
              return MaterialPageRoute(builder: (_) => const ProgressScreen());
            case RouteName.greetingsAndIntro:
              return MaterialPageRoute(builder: (_) => const GreetingsIntroScreen());
            case RouteName.quiz:
              return MaterialPageRoute(builder: (_) => const QuizScreen());
            case RouteName.quizResult:
              return MaterialPageRoute(builder: (_) => const ResultScreen());
            default:
              return null;
          }
        },
      ),
    );
  }
}
