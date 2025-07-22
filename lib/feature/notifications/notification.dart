import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/widgets/profile_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
          onBackPressed: () => Get.back(id: NavIds.profile),
          title: AppStringEn.Notifications.tr),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sectionTitle(AppStringEn.Today.tr, context),
              notificationCard(
                icon: Icons.notifications_active_rounded,
                iconColor: Colors.orange,
                title: '30% Special Discount',
                subtitle: 'Special promotion only valid today',
              ),
              notificationCard(
                icon: Icons.check_circle,
                iconColor: Color(0xFF34A853), // green
                title: 'Password Update Successfully',
                subtitle: 'Your Password Update Successfully',
              ),
              const SizedBox(height: 20),
              sectionTitle(AppStringEn.Yesterday.tr, context),
              // Repeat similar cards for yesterday
              for (int i = 0; i < 4; i++)
                notificationCard(
                  icon: Icons.notifications_active_rounded,
                  iconColor: Colors.orange,
                  title: '30% Special Discount',
                  subtitle: 'Special promotion only valid today',
                ),
              notificationCard(
                icon: Icons.check_circle,
                iconColor: Color(0xFF34A853),
                title: 'Password Update Successfully',
                subtitle: 'Your Password Update Successfully',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Section header
  Widget sectionTitle(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.tertiaryFixed,
        ),
      ),
    );
  }

  // Notification item
  Widget notificationCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF7E7), // Soft card color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF999999),
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
