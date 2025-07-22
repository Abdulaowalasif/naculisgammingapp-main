import 'package:flutter/material.dart';
import 'package:naculisgammingapp/feature/quest/widgets/quest_button.dart';
import 'package:naculisgammingapp/feature/widgets/custom_appbar.dart';

class LessonQuest extends StatefulWidget {
  const LessonQuest({super.key});

  @override
  State<LessonQuest> createState() => LessonQuestState();
}

class LessonQuestState extends State<LessonQuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          QuestCard(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            title: "Lesson Quests",
            subtitle:
                "Complete lessons to automatically finish Quests and earn XP!",
            iconAsset: 'assets/images/quiz/trophy.png',
            onTap: () {},
          ),

          LessonStatsCard(totalLesson: 06, totalXP: 100),
          LessonStatsCard(showLevel: false, totalLesson: 06, totalXP: 100),
        ],
      ),
    );
  }
}
