import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/localization/localization.dart';
import 'package:naculisgammingapp/core/theme/theme_data.dart';
import 'package:naculisgammingapp/routes/app_route.dart';
import 'package:naculisgammingapp/routes/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Message(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: RouteName.loadingSplash,
      getPages: AppRoute.pages,
    );
  }
}
