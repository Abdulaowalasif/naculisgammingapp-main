import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/feature/home/screens/greetings_intro_screen.dart';
import 'package:naculisgammingapp/feature/quiz/screens/quiz_screen.dart';

import 'package:naculisgammingapp/feature/widgets/title_card.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

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
    return SingleChildScrollView(
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
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => GreetingsIntroScreen()),
                );
              },
              title: item['title'],
              lessons: item['lessons'],
              completed: item['completed'],
              progress: item['progress'],
            ),
          ),
        ],
      ),
    );
  }
}
