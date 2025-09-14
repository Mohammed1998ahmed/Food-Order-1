import 'package:flutter/material.dart';
import 'package:food_order/feature/forgot_Password/forgot_Password.dart';
import 'package:food_order/feature/onBording/onBording.dart';
import 'package:food_order/feature/welcome/welcome.dart';

import '../../feature/sign_in/sign_in_screen.dart';
import 'router.dart';

class App_Roters {
  MaterialPageRoute genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routers.welcome:
        return MaterialPageRoute(builder: (_) => const Welcome());
      case Routers.onBoarding:
        return MaterialPageRoute(builder: (_) => On_Bording_Screen());
      case Routers.login:
        return MaterialPageRoute(builder: (_) => const SignIN_Screen());
      case Routers.forgot_Password:
        return MaterialPageRoute(builder: (_) => const Forgot_Password());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text('No route defined')),
                ));
    }
  }
}
