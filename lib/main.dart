import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Day3/platform_detection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PlatformDetectionClass(),

      ),
    );
  }
}
