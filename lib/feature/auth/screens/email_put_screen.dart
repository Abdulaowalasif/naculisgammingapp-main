import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';

import '../../../routes/route_name.dart';

class EmailPutScreen extends StatefulWidget {
  const EmailPutScreen({super.key});

  @override
  State<EmailPutScreen> createState() => _EmailPutScreenState();
}

class _EmailPutScreenState extends State<EmailPutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    AppStringEn.forgotPassword.tr,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: Get.height * 0.003),
                  Text(
                    AppStringEn.selectYouLikeToProceed.tr,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: Get.height * 0.05),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppStringEn.emailAddress.tr,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(height: Get.height * 0.01),
                  TextField(
                    decoration: InputDecoration(
                      hintText: AppStringEn.enterMail.tr,
                      hintStyle: Theme.of(
                        context,
                      ).textTheme.labelSmall?.copyWith(color: Colors.grey),
                    ),
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: Get.height * 0.05),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(RouteName.otpVerification);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(Get.width, 50),
                    ),
                    child: Text(
                      AppStringEn.sendCode.tr,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
