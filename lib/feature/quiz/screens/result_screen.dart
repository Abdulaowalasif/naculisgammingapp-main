import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImageAndIconConst.trophy),

                const SizedBox(height: 20),

                // Top Cards Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _infoCard(
                      title: AppStringEn.totalXP.tr,
                      icon: Icons.flash_on,
                      iconColor: Colors.orange,
                      value: '10',
                      valueColor: Colors.orange,
                      iconInsideColor: Colors.blue,
                    ),
                    _infoCard(
                      title: AppStringEn.amazing.tr,
                      value: '100%',
                      valueColor: Colors.orange,
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Earned Gems Title
                Text(
                  AppStringEn.earnedGems.tr,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                // Gems Card
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.diamond, size: 40, color: Colors.orange),
                      const SizedBox(width: 4),
                      Text(
                        '500', // Consider making this dynamic/localized
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[800],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Bottom Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          AppStringEn.shareResults.tr,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(RouteName.quiz, id: NavIds.home);
                        },
                        child: Text(
                          AppStringEn.takeNewQuiz.tr,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable info card
  Widget _infoCard({
    required String title,
    IconData? icon,
    required String value,
    Color? iconColor,
    Color? iconInsideColor,
    Color valueColor = Colors.black,
  }) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: const Color(0xFFCAE4A4),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) Icon(icon, color: iconColor, size: 16),
              const SizedBox(width: 4),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            margin: const EdgeInsets.all(6),
            padding: const EdgeInsets.symmetric(vertical: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFFDEBDD),
              border: Border.all(color: Colors.orange),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Icon(icon, color: iconInsideColor ?? iconColor, size: 24),
                const SizedBox(width: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 18,
                    color: valueColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
