import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/themes/colors.dart';

import 'core/routers/app_router.dart';
import 'core/routers/router.dart';

class AppApp extends StatelessWidget {
  const AppApp({super.key, required this.app_roters});
  final App_Roters app_roters;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'First Method',
        // You can use the library anywhere in the app even in theme
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors_App.whiteColor,
        ),
        initialRoute: Routers.onBoarding,
        onGenerateRoute: app_roters.genrateRoute,
      ),
    );
  }
}
