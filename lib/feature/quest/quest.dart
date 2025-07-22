import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/quest/widgets/quest_button.dart';
import 'package:naculisgammingapp/feature/widgets/custom_appbar.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class QuestScreen extends StatefulWidget {
  const QuestScreen({super.key});

  @override
  State<QuestScreen> createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            QuestButton(
              title: AppStringEn.lessonQuests.tr,
              onTap: () {
                Get.toNamed(RouteName.lessonQuest, id: NavIds.quest);
              },
              iconAsset: 'assets/images/quiz/trophy.png',
            ),
            SizedBox(height: 20),
            QuestButton(
              title: "Auto-Tracked Quests",
              onTap: () {
                Get.toNamed(RouteName.autoTracked, id: NavIds.quest);
              },
              iconAsset: 'assets/images/quiz/trophy.png',
            ),
          ],
        ),
      ),
    );
  }
}
