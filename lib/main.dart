import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_app.dart';
import 'core/routers/app_router.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white, // لون خلفية شريط الحالة
    statusBarIconBrightness: Brightness.dark, // لون الرموز (أسود)
  ));
  runApp(AppApp(
    app_roters: App_Roters(),
  ));
}
