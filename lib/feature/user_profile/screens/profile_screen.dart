import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/feature/user_profile/widgets/friends_card.dart';
import 'package:naculisgammingapp/feature/user_profile/widgets/personality_card.dart';
import 'package:naculisgammingapp/feature/user_profile/widgets/stats_card.dart';
import 'package:naculisgammingapp/feature/widgets/profile_app_bar.dart';
import '../../../core/const/app_string.dart';
import '../widgets/setting_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: AppStringEn.profile.tr),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Image
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?img=3',
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Name
            Text(
              AppStringEn.userName.tr,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 5),

            // Email
            Text(
              AppStringEn.userEmail.tr,
              style: Theme.of(context).textTheme.titleSmall,
            ),

            const SizedBox(height: 10),

            // Personality Card
            const PersonalityCard(),

            const SizedBox(height: 10),

            // Horizontal scroll cards
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  FriendsCard(),
                  StatsCard(),
                ],
              ),
            ),

            // Settings
            const SettingsSection(),
          ],
        ),
      ),
    );
  }
}
