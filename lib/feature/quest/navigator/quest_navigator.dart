import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/quest/quest.dart';
import 'package:naculisgammingapp/feature/quest/widgets/auto_tracked_quest.dart';
import 'package:naculisgammingapp/feature/quest/widgets/lesson_quest.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class QuestNavigator extends StatelessWidget {
  const QuestNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final canPop = Get.nestedKey(NavIds.quest)?.currentState?.canPop() ?? false;
        if (canPop) {
          Get.nestedKey(NavIds.quest)?.currentState?.pop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key: Get.nestedKey(NavIds.quest),
        initialRoute: RouteName.quest,
        onGenerateRoute: (settings) {
          if (settings.name == RouteName.quest) {
            return MaterialPageRoute(builder: (context) => const QuestScreen());
          } else if (settings.name == RouteName.lessonQuest) {
            return MaterialPageRoute(builder: (context) => const LessonQuest());
          } else if (settings.name == RouteName.autoTracked) {
            return MaterialPageRoute(builder: (context) => const Auto_Tracked());
          }
          return null;
        },
      ),
    );
  }
}
