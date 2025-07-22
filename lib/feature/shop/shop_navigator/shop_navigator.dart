import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/nav_ids.dart';
import 'package:naculisgammingapp/feature/shop/screen/shop_screen3.dart';
import 'package:naculisgammingapp/feature/shop/screen/shop_screen4.dart';
import 'package:naculisgammingapp/feature/shop/screen/shop_screen5.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

import '../screen/shop_screen1.dart';
import '../screen/shop_screen2.dart';

class ShopNavigator extends StatelessWidget {
  const ShopNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final canPop = Get.nestedKey(NavIds.shop)?.currentState?.canPop() ?? false;
        if (canPop) {
          Get.nestedKey(NavIds.shop)?.currentState?.pop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key: Get.nestedKey(NavIds.shop),
        initialRoute: RouteName.shop1,
        onGenerateRoute: (settings) {
          if (settings.name == RouteName.shop1) {
            return MaterialPageRoute(builder: (context) => const ShopScreen1());
          } else if (settings.name == RouteName.shop2) {
            return MaterialPageRoute(builder: (context) => const ShopScreen2());
          } else if (settings.name == RouteName.shop3) {
            return MaterialPageRoute(builder: (context) => const ShopScreen3());
          } else if (settings.name == RouteName.shop4) {
            return MaterialPageRoute(builder: (context) => const ShopScreen4());
          } else if (settings.name == RouteName.shop5) {
            return MaterialPageRoute(builder: (context) => const ShopScreen5());
          }
          return null;
        },
      ),
    );
  }
}
