import 'package:flutter/material.dart';
import 'package:food_order/feature/welcome/ui/welcome.dart';

import '../../feature/login_Screen/ui/loginScreen.dart';
import 'router.dart';

class App_Roters {
  MaterialPageRoute genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.welcome:
        return MaterialPageRoute(builder: (_) => const Welcome());

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
