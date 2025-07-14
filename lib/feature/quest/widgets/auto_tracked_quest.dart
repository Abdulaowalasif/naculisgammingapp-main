
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/feature/quest/widgets/quest_button.dart';

import '../../widgets/custom_appbar.dart';

class Auto_Tracked extends StatefulWidget {
  const Auto_Tracked({super.key});

  @override
  State<Auto_Tracked> createState() => _LessonQuestState();
}

class _LessonQuestState extends State<Auto_Tracked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QuestCard(
              title: AppStringEn.autoTrackedQuests.tr,
              subtitle: "Complete lessons to automatically finish Quests and earn XP!",
              iconAsset: 'assets/images/quiz/trophy.png',
              onTap: () {},
            ),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: QuestProgressCard(
                category: "Basic",
                title: "Master Basic Greetings",
                subtitle: "Complete 3 greeting lessons in Basics",
                currentProgress: 0,
                totalProgress: 3,
                rewardXP: 60,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: QuestProgressCard(
                category: "Basic",
                title: "Survival Slang",
                subtitle: "Complete 3 greeting lessons in Basics",
                currentProgress: 0,
                totalProgress: 3,
                rewardXP: 80,
              ),
            ),
          ],
        ),
      ),
    );


  }
}
