import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:naculisgammingapp/feature/widgets/profile_app_bar.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class ShopScreen3 extends StatefulWidget {
  const ShopScreen3({super.key});

  @override
  State<ShopScreen3> createState() => _ShopScreen3State();
}

class _ShopScreen3State extends State<ShopScreen3> {
  String selectedGateway = 'paypal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // Background color from image
      appBar: ProfileAppBar(title: 'Payment Method'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title row with Add New
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  'Select payment gateway',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiaryFixed,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Add new gateway logic
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF34A853),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Add New',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(height: 12),

            // PayPal Option Card
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGateway = 'paypal';
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: selectedGateway == 'paypal'
                        ? const Color(0xFF34A853)
                        : Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  children: [
                    Radio<String>(
                      value: 'paypal',
                      groupValue: selectedGateway,
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          selectedGateway = value!;
                        });
                      },
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      'assets/images/cib_cc-paypal.png',
                      height: 28,
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            // Continue Button
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteName.shop4);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF34A853),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
