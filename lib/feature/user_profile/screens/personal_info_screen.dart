import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/feature/user_profile/widgets/analysis_dialogbox.dart';
import 'package:naculisgammingapp/feature/widgets/profile_app_bar.dart';

import '../../../core/const/app_string.dart';
import '../widgets/profile_info_tile.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: AppStringEn.profileInfo.tr),
      body: Column(
        children: [
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 50),
              Center(
                child: Container(
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
              ),
              IconButton(
                icon: const Icon(Icons.mode_edit_outlined, size: 28),
                onPressed: () {
                  AnalysisDialogBox.show(
                    title: AppStringEn.aiAnalysis.tr,
                    content: AppStringEn.analysisSummary.tr,
                    onRefresh: () {},
                    context: context,
                  );
                },
              ),
            ],
          ),

          const SizedBox(height: 10),
          const Text(
            'Kenn Denson',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            'israal123@gmail.com',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                ProfileInfoTile(
                  topLeft: 10,
                  topRight: 10,
                  title: AppStringEn.phone.tr,
                  value: '+44 234 563 45',
                ),
                ProfileInfoTile(
                  title: AppStringEn.Birthday.tr,
                  value: '12/05/1996',
                ),
                ProfileInfoTile(
                  title: AppStringEn.country.tr,
                  value: 'United Kingdom',
                  bottomLeft: 10,
                  bottomRight: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
