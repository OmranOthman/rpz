import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rpz_project/Screens/add_to_cart.dart';
import 'package:rpz_project/Screens/all_order.dart';
import 'package:rpz_project/Screens/home.dart';
import 'package:rpz_project/Screens/home_1.dart';
import 'package:rpz_project/Screens/send_order.dart';
import 'package:rpz_project/Screens/signup.dart';
import 'package:rpz_project/Screens/splashScreen.dart';
import 'package:rpz_project/Screens/test.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context , child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,


          home: SplashScreen(),
        );
      },
    );
  }
}