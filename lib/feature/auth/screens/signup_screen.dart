import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';

import '../../../routes/route_name.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                      AppStringEn.signUp.tr,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text(
                      AppStringEn.getStarted.tr,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStringEn.enterName.tr,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: AppStringEn.enterName.tr,
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
                        AppStringEn.emailAddress.tr,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: AppStringEn.enterMail.tr,
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
                        AppStringEn.phone.tr,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: '+44 258 6649 565',
                        hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey),
                      ),
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStringEn.password.tr,
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
                        AppStringEn.confirmPassword.tr,
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
                        Get.toNamed(
                          RouteName.oftenLang,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(Get.width, 50),
                      ),
                      child: Text(
                        AppStringEn.signUp.tr,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStringEn.alreadyHaveAccount.tr,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(RouteName.signin);
                          },
                          child: Text(
                            AppStringEn.signIn.tr,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
