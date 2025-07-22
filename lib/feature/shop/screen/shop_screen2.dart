import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/widgets/custom_appbar.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class ShopScreen2 extends StatelessWidget {
  const ShopScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                value: 0.3,
                minHeight: 10,
                backgroundColor: const Color(0xFFD4E6C3),
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Color(0xFFFF9800),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'You have 300 gems out of 1000 needed to withdraw',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.tertiaryFixed,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              // Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFEFDF),

                  border: Border.all(color: Color(0xFFFF9800)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Row(
                      children: const [
                        SizedBox(width: 80),
                        Icon(
                          Icons.diamond_outlined,
                          color: Color(0xFFFF9800),
                          size: 28,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Gem to USD',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF333333),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Gems & USD
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gem : 1300',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF333333),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'You Can Withdraw : \$6.50',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF333333),
                            fontSize: 14, // ✅ Added missing color
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(),

                    const SizedBox(height: 12),
                    const Text(
                      'Your PayPal Email',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF333333),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),

                    TextField(
                      decoration: InputDecoration(
                        hintText: 'you@example.com',

                        hintStyle: const TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 20,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 14,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),

                    const SizedBox(height: 16),

                    // Withdraw Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 18,
                        ),
                        label: const Text(
                          'Withdraw to PayPal',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        onPressed: () {
                          Get.toNamed(RouteName.shop3, id: NavIds.shop);
                        },
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Notes
                    const Text(
                      '•  Minimum withdrawal: 1000 gems = \$5',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const Text(
                      '•  Processing time: within 24–48 hours',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const Text(
                      '•  We never share your PayPal info.',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
