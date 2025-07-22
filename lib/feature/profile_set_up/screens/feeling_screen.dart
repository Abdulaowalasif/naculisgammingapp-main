import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/feature/profile_set_up/widget/un_selected_btn.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

import '../../../core/const/demo_data.dart';

class FeelingScreen extends StatefulWidget {
  const FeelingScreen({super.key});

  @override
  State<FeelingScreen> createState() => _FeelingScreenState();
}

class _FeelingScreenState extends State<FeelingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Image.asset(
          'assets/images/setup_progress/3.png',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/one_eye_cat.png',
                    width: 50,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Text(
                        AppStringEn.howAreYouFeeling.tr,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              AppStringEn.chooseSlangTypes.tr,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: DemoData.setupData['feeling']?.length ?? 0,
              itemBuilder: (context, index) {
                final vibe = DemoData.setupData['feeling']![index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0), // space after each item
                  child: UnSelectedBtn(
                    icon: vibe['icon'],
                    title: vibe['title'],
                    onTap: () {
                    },
                  ),
                );
              },
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(RouteName.signin);
              },
              child: Text(
                AppStringEn.next.tr,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
