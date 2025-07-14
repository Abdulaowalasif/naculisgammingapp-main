import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';
import 'package:naculisgammingapp/feature/home/screens/progress_screen.dart';
import 'package:naculisgammingapp/feature/home/widgets/greeting_intro_card.dart';
import 'package:naculisgammingapp/feature/quiz/screens/quiz_screen.dart';
import 'package:naculisgammingapp/feature/widgets/custom_appbar.dart';
import 'package:naculisgammingapp/feature/widgets/title_card.dart';

class GreetingsIntroScreen extends StatefulWidget {
  const GreetingsIntroScreen({super.key});

  @override
  State<GreetingsIntroScreen> createState() => _GreetingsIntroScreenState();
}

class _GreetingsIntroScreenState extends State<GreetingsIntroScreen> {
  List<Map<String, dynamic>> greetings = [
    {
      'title': "Basic Greetings",
      'subTitle': "Vocabulary",
      'leading': ImageAndIconConst.book,
      'trailing': ImageAndIconConst.lock,
      'isCurrent': true,
    },
    {
      'title': "What's Good? ",
      'subTitle': "listening",
      'leading': ImageAndIconConst.headphone,
      'trailing': ImageAndIconConst.lock,
      'isCurrent': false,
    },
    {
      'title': "Intro Yourself ",
      'subTitle': "pronunciation",
      'leading': ImageAndIconConst.mic,
      'trailing': ImageAndIconConst.lock,
      'isCurrent': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleCard(title: 'Greetings & Intros', subTitle: '1st Avenue'),
            GreetingIntroCard(
              title: 'Basic Greetings',
              onPressed: () {
                Get.to(QuizScreen(title: ''));
              },
              subTitle: 'Vocabulary',
              leading: ImageAndIconConst.book,
              trailing: ImageAndIconConst.lock,
              isCurrent: true,
            ),
            GreetingIntroCard(
              title: "What's Good? ",
              onPressed: () {},
              subTitle: 'listening',
              leading: ImageAndIconConst.headphone,
              trailing: ImageAndIconConst.lock,
              isCurrent: false,
            ),
            GreetingIntroCard(
              title: "Intro Yourself",
              onPressed: () {},
              subTitle: 'pronunciation ',
              leading: ImageAndIconConst.mic,
              trailing: ImageAndIconConst.lock,
              isCurrent: false,
            ),
          ],
        ),
      ),
    );
  }
}
