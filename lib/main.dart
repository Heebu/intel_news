import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wed_development/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {

          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: ScreenUtilInit(
            designSize: const Size(1366.0, 633.0),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (BuildContext context, Widget? child) {
               ScreenUtil.init(context);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'IntelRegion',
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.green.shade900),
                  useMaterial3: true,
                ),
                home: const SplashScreen(),
              );
            }));
  }
}
