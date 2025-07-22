import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

import '../../../core/const/image_icon.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/title_card.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final TextEditingController _controller = TextEditingController();

  void _onSubmit() {
    Get.toNamed(RouteName.quizResult, id: NavIds.home);
  }

  void _onTypeTap() {
    print("Type button tapped");
  }

  void _onSpeakTap() {
    print("Speak button tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          TitleCard(title: "Basic Greetings", subTitle: "Vocabulary Lesson"),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: QuestionCard(
              question: "1.Whats the slang equivalent of Hello,How are you?",
              controller: _controller,
              onSubmit: _onSubmit,
              onTypeTap: _onTypeTap,
              onSpeakTap: _onSpeakTap,
              typeIcon: Image.asset(ImageAndIconConst.typeIcon),
              speakIcon: Image.asset(ImageAndIconConst.speakIcon),
            ),
          ),
        ],
      ),
    );
  }
}
