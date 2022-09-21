import 'package:flutter/material.dart';

// import 'package:device_preview/device_preview.dart';
import 'package:pavilion_rewards_ui/app/app_theme_color.dart';

import 'package:pavilion_rewards_ui/bottom_nav_bar.dart';

void main() {
  runApp(
    const MyApp(),
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) => const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      title: 'Pavilion Rewards',

      theme: ThemeData(
        primaryColor: AppThemeColor.primaryColor,
        scaffoldBackgroundColor: AppThemeColor.scaffoldBGColor,
      ),
      home: const BottomNavBar(),
    );
  }
}
