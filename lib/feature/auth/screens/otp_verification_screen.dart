import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/app_string.dart';
import '../../../routes/route_name.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(5, (_) => FocusNode());
    _controllers = List.generate(5, (_) => TextEditingController());
  }

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
                    AppStringEn.OTPVerification.tr,
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
                      AppStringEn.enterCode.tr,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(5, (index) {
                      return SizedBox(
                        width: 55,
                        height: 55,
                        child: TextField(
                          controller: _controllers[index],
                          focusNode: _focusNodes[index],
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty && index < 4) {
                              _focusNodes[index + 1].requestFocus();
                            } else if (value.isEmpty && index > 0) {
                              _focusNodes[index - 1].requestFocus();
                            }
                          },
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: Get.height * 0.05),
                  ElevatedButton(
                    onPressed: () {
                      final otp = _controllers.map((c) => c.text).join();
                      if (otp.length == 5) {
                        Get.toNamed(RouteName.newPasswordSet);
                      } else {
                        Get.snackbar(
                          'Error',
                          'Please enter all 5 digits',
                          backgroundColor: Colors.redAccent,
                          colorText: Colors.white,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(Get.width, 50),
                    ),
                    child: Text(
                      AppStringEn.next.tr,
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
