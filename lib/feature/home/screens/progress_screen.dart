import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/feature/widgets/custom_appbar.dart';

import 'package:naculisgammingapp/feature/widgets/title_card.dart';

import '../../../core/const/nav_ids.dart';
import '../../../routes/route_name.dart';
import '../widgets/progress_card.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  final List<Map<String, dynamic>> progress = [
    {
      'title': 'Greetings & Intros',
      'completed': 2,
      'lessons': 6,
      'progress': 0.33,
    },
    {'title': 'Vibe Check-In', 'completed': 4, 'lessons': 6, 'progress': 0.6},
    {'title': 'Survival Terms', 'completed': 5, 'lessons': 6, 'progress': 0.9},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const TitleCard(
              title: '1st Avenue',
              subTitle: 'Foundational Slang',
              details: 'Greetings, intro phrases, vibe check-ins, survival terms',
            ),
            const SizedBox(height: 10),
            ...progress.map(
              (item) => ProgressCard(
                onPress: () {
                 Get.toNamed(RouteName.greetingsAndIntro, id: NavIds.home);
                },
                title: item['title'],
                lessons: item['lessons'],
                completed: item['completed'],
                progress: item['progress'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
