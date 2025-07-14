
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/feature/quest/widgets/auto_tracked_quest.dart';
import 'package:naculisgammingapp/feature/quest/widgets/lesson_quest.dart';
import 'package:naculisgammingapp/feature/quest/widgets/quest_button.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen({super.key});

  @override
  State<QuestScreen> createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            QuestButton(title: AppStringEn.lessonQuests.tr, onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => LessonQuest()),
              );
            }, iconAsset: 'assets/images/quiz/trophy.png',
            ),
            SizedBox(height: 20,),
            QuestButton(title: "Auto-Tracked Quests", onTap: () {

             Get.to(Auto_Tracked());

            }, iconAsset: 'assets/images/quiz/trophy.png',
            ),
          ],
        ),
      ),
    );
  }
}
