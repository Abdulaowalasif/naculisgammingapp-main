import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class ShopScreen1 extends StatelessWidget {
  const ShopScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCard(
              icon: Icons.diamond,
              title: '300',
              subtitle: AppStringEn.gemsAvailable.tr,
              buttonText: AppStringEn.exchange.tr,
              buttonColor: const Color(0xFF34A853),
              titleStyle: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF57C00),
              ),
              subtitleStyle: const TextStyle(
                color: Color(0xFFF57C00),
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                Get.toNamed(RouteName.shop2);
              },
            ),
            const SizedBox(height: 16),
            _buildCard(
              icon: Icons.favorite_border,
              title: AppStringEn.heartRecharge.tr,
              subtitle: AppStringEn.heartsFull.tr,
              footerText: AppStringEn.alreadyMaxHeart.tr,
              footerColor: const Color(0xFF34A853),
              titleStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF57C00),
              ),
              subtitleStyle: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
              onPressed: () {
                Get.toNamed(RouteName.shop2);
              },
            ),
            const SizedBox(height: 16),
            _buildCard(
              icon: Icons.crop_outlined,
              title: AppStringEn.premiumSubscription.tr,
              subtitle: AppStringEn.removeAdsUnlockPremium.tr,
              price: '\$5.99\nPer month',
              buttonText: AppStringEn.perMonth.tr,
              buttonColor: const Color(0xFF34A853),
              badgeText: AppStringEn.popular.tr,
              titleStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF57C00),
              ),
              subtitleStyle: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
              onPressed: () {
                Get.toNamed(RouteName.shop2);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required String title,
    required String subtitle,
    String? footerText,
    Color? footerColor,
    String? buttonText,
    Color? buttonColor,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    String? price,
    String? badgeText,
    required VoidCallback onPressed,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF5E7),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFFFE0B2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (badgeText != null)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFF57C00),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  badgeText,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          Row(
            children: [
              Icon(icon, color: const Color(0xFFF57C00), size: 30),
              const SizedBox(width: 12),
              Text(
                title,
                style:
                    titleStyle ??
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style:
                subtitleStyle ??
                const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          if (footerText != null) ...[
            const SizedBox(height: 10),
            Text(
              footerText,
              style: TextStyle(color: footerColor ?? Colors.black),
            ),
          ],
          if (price != null) ...[
            const SizedBox(height: 10),
            Text(
              price,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
          if (buttonText != null && buttonColor != null) ...[
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: onPressed,
                child: Text(
                  buttonText,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
