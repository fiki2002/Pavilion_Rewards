import 'package:pavilion_rewards_ui/exports/file_exports.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    // const MyApp(),
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          title: 'Pavilion Rewards',
          theme: ThemeData(
            primaryColor: AppThemeColor.primaryColor,
            scaffoldBackgroundColor: AppThemeColor.scaffoldBGColor,
          ),
          home: const BottomNavBar(),
        );
      },
    );
  }
}
