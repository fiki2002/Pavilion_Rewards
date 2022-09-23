import 'package:pavilion_rewards_ui/exports/file_exports.dart';

void main() {
  runApp(
    const MyApp(),
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
          title: 'Pavilion Rewards',
          theme: ThemeData(
            primarySwatch:
                MaterialColor(0xFF5243D2, AppThemeColor.primarySwatch),
            primaryColor: AppThemeColor.primaryColor,
            scaffoldBackgroundColor: AppThemeColor.scaffoldBGColor,
          ),
          home: const Bottom(),
        );
      },
    );
  }
}
