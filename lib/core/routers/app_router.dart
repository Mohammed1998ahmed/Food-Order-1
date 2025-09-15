import 'package:flutter/material.dart';
import 'package:food_order/feature/create_Account/create_Account.dart';
import 'package:food_order/feature/forgot_Password/forgot_Password.dart';
import 'package:food_order/feature/login_by_number_phone/login_by_numberphone.dart';
import 'package:food_order/feature/onBording/onBording.dart';
import 'package:food_order/feature/reset_Password/reset_Password.dart';
import 'package:food_order/feature/select_location/enter_Location.dart';
import 'package:food_order/feature/select_location/select_loction.dart';
import 'package:food_order/feature/verify_phone_number/verify_phone_number.dart';
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
      case Routers.Reset_Password:
        return MaterialPageRoute(builder: (_) => const Reset_Password());
      case Routers.Creatte_Account:
        return MaterialPageRoute(builder: (_) => const Create_Screen());
      case Routers.Login_By_NumberPhone:
        return MaterialPageRoute(builder: (_) => const Login_By_NumberPhone());
      case Routers.verify_PhoneNumber:
        return MaterialPageRoute(builder: (_) => const Verify_NumberPhone());
      case Routers.select_Location:
        return MaterialPageRoute(builder: (_) => const SelectLocationPage());
      case Routers.enter_Location:
        return MaterialPageRoute(builder: (_) => const EnterAddressPage());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text('No route defined')),
                ));
    }
  }
}
