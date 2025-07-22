import 'package:flutter/material.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.all(10),
      height: 150,
      width: 260,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                height: 18,
                width: 18,
                'assets/images/user_profile/tabler_home-stats.png',
              ),
              const SizedBox(width: 10),
              Text(
                'Your Stats',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _statsIconRow(
                ImageAndIconConst.diamonds,
                'Gems',
                10,
                Colors.blue,
              ),
              _statsIconRow(
                "assets/images/user_profile/Vector-3.png",
                'Gems',
                5,
                Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _statsIconRow(
                'assets/images/user_profile/Vector.png',
                'Level',
                1,
                Colors.yellow,
              ),
              const SizedBox(width: 5),
              _statsIconRow(
                "assets/images/user_profile/Vector-1.png",
                'Day Streak',
                1,
                Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 5),
              _statsIconRow(
                "assets/images/user_profile/Vector-2.png",
                'XP',
                0,
                Colors.purpleAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _statsIconRow(String icon, String title, int count, Color color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, color: color, height: 16, width: 16),
      const SizedBox(width: 5),
      Text(
        '$title $count',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
