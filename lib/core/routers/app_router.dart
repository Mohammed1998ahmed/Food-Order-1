import 'package:flutter/material.dart';

import '../../feature/login_Screen/ui/loginScreen.dart';
import '../../feature/splash_Screen/ui/splashScreen.dart';
import 'router.dart';

class App_Roters {
  MaterialPageRoute genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routers.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text('No route defined')),
                ));
    }
  }
}
