import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';

import '../../../routes/route_name.dart';

class NewPasswordSetScreen extends StatefulWidget {
  const NewPasswordSetScreen({super.key});

  @override
  State<NewPasswordSetScreen> createState() => _NewPasswordSetScreenState();
}

class _NewPasswordSetScreenState extends State<NewPasswordSetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body:Center(
        child: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      AppStringEn.newPassword.tr,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: Get.height * 0.003,
                    ),
                    Text(
                      AppStringEn.selectYouLikeToProceed.tr,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStringEn.newPassword.tr,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '*** *** *** ',
                        hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey),
                      ),
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStringEn.newPassword.tr,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '*** *** *** ',
                        hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey),
                      ),
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(RouteName.signin);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(Get.width, 50),
                      ),
                      child: Text(
                        AppStringEn.save.tr,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),

                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
