import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/user_profile/widgets/section_tile.dart';
import 'package:naculisgammingapp/feature/user_profile/widgets/setting_item.dart';
import 'package:naculisgammingapp/feature/user_profile/widgets/setting_toggle_item.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class SettingsSection extends StatefulWidget {
  const SettingsSection({super.key});

  @override
  State<SettingsSection> createState() => SettingsSectionState();
}

class SettingsSectionState extends State<SettingsSection> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          SectionTitle('Account Details'),
          SettingsItem(
            icon: Icons.person_outline,
            title: 'Personal Info',
            onTap: () {
              Get.toNamed(RouteName.personalInfo,id: NavIds.profile);
            },
          ),
          SettingsItem(
            icon: Icons.notifications_none,
            title: 'Notification',
            onTap: () {
              Get.toNamed(RouteName.notification,id: NavIds.profile);
            },
          ),
          SettingsItem(
            icon: Icons.group_outlined,
            title: 'Refer a friend',
            onTap: () {
              Get.toNamed(RouteName.referFriend,id: NavIds.profile);
            },
          ),

          const SizedBox(height: 10),
          SectionTitle('Settings & Accessibility'),
          SettingsToggleItem(
            icon: Icons.dark_mode_outlined,
            title: 'Dark Mode',
            initialValue: isDark,
            onChanged: (value) {
              Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
            },
          ),
          SettingsToggleItem(
            icon: Icons.graphic_eq_outlined,
            title: 'Voiceover',
            initialValue: false,
            onChanged: (value) {
              Get.updateLocale(
                value ? const Locale('es', 'ES'): const Locale('en', 'US'),
              );
            },
          ),

          const SizedBox(height: 10),
          SectionTitle('Earn'),
          SettingsItem(
            icon: Icons.account_balance_wallet_outlined,
            title: 'My Balance',
            onTap: () {
              Get.toNamed(RouteName.withdraw,id: NavIds.profile);
            },
          ),

          const SizedBox(height: 10),
          SectionTitle('Support'),
          SettingsItem(
            icon: Icons.email_outlined,
            title: 'Contact US',
            onTap: () {
              Get.toNamed(RouteName.contactUs,id: NavIds.profile);

            },
          ),

          const SizedBox(height: 10),
          SettingsItem(
            icon: Icons.power_settings_new_outlined,
            title: 'Log Out',
            onTap: () {
              Get.toNamed(RouteName.signin);
            },
          ),
        ],
      ),
    );
  }
}
