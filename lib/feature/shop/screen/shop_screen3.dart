import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
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
      appBar: ProfileAppBar(
          onBackPressed: () => Get.back(id: NavIds.shop),
          title: 'Payment Method'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                SizedBox(
                  height: 35,
                  width: 102,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add new gateway logic
                    },
                    child: Text(
                      'Add New',
                      style:Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white,fontSize: 14
                      ),
                    ),
                  ),
                ),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
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
                    Image.asset('assets/images/cib_cc-paypal.png', height: 28),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),  bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(RouteName.shop4, id: NavIds.shop);
          },
          child: const Text(
            'Continue',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    ),
    );
  }
}
