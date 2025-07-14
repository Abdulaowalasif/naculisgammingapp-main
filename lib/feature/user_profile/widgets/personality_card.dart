import 'package:flutter/material.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';
import 'package:naculisgammingapp/feature/user_profile/widgets/analysis_dialogbox.dart';

class PersonalityCard extends StatelessWidget {
  const PersonalityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.all(10),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImageAndIconConst.brain),
                Text(
                  'AI Personality analysis',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(width: 50),
                Image.asset(
                  'assets/images/user_profile/material-symbols-light_star-shine-outline-rounded.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
          Text(
            "Get personalized insights based on your \nintro answers and chat interactions!",
            style: TextStyle(fontSize: 14, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 190,
            height: 32,
            child: ElevatedButton(
              onPressed: () {
                AnalysisDialogBox.show(
                  title: 'AI Personality analysis',
                  content:
                      "Based on your profile, you're a English speaker with en-us dialect preferences. Your vibe selection (youth) suggests you're interested in authentic cultural experiences and community connections. Your emotional state (curious) indicates you're ready to engage with new learning experiences. You have a strong interest in street culture and community engagement, making you well-suited for exploring local scenes and building meaningful connections through language learning.",
                  onRefresh: () {},
                  context: context,
                );
              },
              child: Row(
                children: [
                  Image.asset(
                    ImageAndIconConst.brain,
                    width: 18,
                    height: 18,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Generate Analysis',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
