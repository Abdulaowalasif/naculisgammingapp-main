import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/feature/widgets/profile_app_bar.dart';

import '../../core/const/nav_ids.dart';

class ReferFriend extends StatelessWidget {
  const ReferFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:ProfileAppBar(
          onBackPressed: () => Get.back(id: NavIds.profile),
          title: AppStringEn.referAFriend.tr),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 110),

            // Illustration Image
            Image.asset(
              'assets/images/Refer.png', // Replace with your actual image path
              height: 220,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),

            // Offer Text
            Text(
              AppStringEn.ReferFriendAndGetOff.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.tertiaryFixed,
              ),
            ),
            const Spacer(),

            // Refer Button
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    AppStringEn.Refer.tr,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
