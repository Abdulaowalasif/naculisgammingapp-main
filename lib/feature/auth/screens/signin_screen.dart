import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
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
                       AppStringEn.signIn.tr,
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
                        height: Get.height * 0.003,
                     ),
                     Text(
                       AppStringEn.tellUsAboutYourself.tr,
                       style: Theme.of(context).textTheme.bodySmall,
                     ),
                      SizedBox(
                          height: Get.height * 0.05,
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
                          hintText: AppStringEn.emailAddress.tr,
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
                         AppStringEn.password.tr,
                         style: Theme.of(context).textTheme.labelMedium,
                       ),
                     ),
                     SizedBox(
                       height: Get.height * 0.01,
                     ),
                     TextField(
                       decoration: InputDecoration(
                         hintText: AppStringEn.enterPassword.tr,
                         hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey),
                       ),
                       style: Theme.of(context).textTheme.labelMedium,
                     ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteName.emailPut);
                          },
                          child: Text(
                            AppStringEn.forgotPassword.tr,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: Get.height * 0.05,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(RouteName.home);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(Get.width, 50),
                        ),
                        child: Text(
                          AppStringEn.signIn.tr,
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
                            AppStringEn.dontHaveAccount.tr,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(RouteName.signup);
                            },
                            child: Text(
                              AppStringEn.signUp.tr,
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
