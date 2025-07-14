import 'package:flutter/material.dart';
import 'package:naculisgammingapp/feature/quest/widgets/quest_button.dart';

class LessonQuest extends StatefulWidget {
  const LessonQuest({super.key});

  @override
  State<LessonQuest> createState() => _Auto_TrackedState();
}

class _Auto_TrackedState extends State<LessonQuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          QuestCard(
            title: "Lesson Quests",
            subtitle: "Complete lessons to automatically finish Quests and earn XP!",
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
