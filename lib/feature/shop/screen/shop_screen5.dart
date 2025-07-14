import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:naculisgammingapp/feature/shop/screen/shop_screen1.dart';
import 'package:naculisgammingapp/feature/widgets/profile_app_bar.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

class ShopScreen5 extends StatelessWidget {
  const ShopScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: "Payment Method"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Text(
              "Successfully Paid",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),

            Image.asset(
              'assets/images/creditCard.png',
              // replace with your actual asset
              height: 300,
              width: 300,
            ),
            const SizedBox(height: 30),

            Text(
              'You have successfully signed up for Business user. Let’s setup your Business now',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.tertiaryFixed,
              ),
            ),
          const SizedBox(height: 200,),
            // Finish button
           ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.home);
                },
                child: const Text(
                  'Finish',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
