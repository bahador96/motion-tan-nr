import 'package:flutter/material.dart';
import 'package:flutter_application_1/bindings/bindings.dart';
import 'package:flutter_application_1/motion_tab_bar_screen.dart';
import 'package:flutter_application_1/shimmer_screen.dart';
import 'package:get/get.dart';

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
      initialBinding: MyBindings(),
      getPages: [
        GetPage(
          name: '/motion',
          page: () => const MotionTabBr(),
        ),
        // GetPage(
        //   name: '/shimmer',
        //   page: () => const ShimmerEffectScreen(),
        // )
      ],
      initialRoute: '/motion',
    );
  }
}
