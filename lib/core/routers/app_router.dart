import 'package:flutter/material.dart';
import 'package:food_order/feature/add_Order/add_order.dart';
import 'package:food_order/feature/add_Payment_Method/add_payment_method.dart';
import 'package:food_order/feature/create_Account/create_Account.dart';
import 'package:food_order/feature/featured_Partners/featured_Partners.dart';
import 'package:food_order/feature/filter/filter.dart';
import 'package:food_order/feature/forgot_Password/forgot_Password.dart';
import 'package:food_order/feature/login_by_number_phone/login_by_numberphone.dart';
import 'package:food_order/feature/onBording/onBording.dart';
import 'package:food_order/feature/reset_Password/reset_Password.dart';
import 'package:food_order/feature/select_location/enter_Location.dart';
import 'package:food_order/feature/select_location/select_loction.dart';
import 'package:food_order/feature/single_restaurant/single_restaurant.dart';
import 'package:food_order/feature/verify_phone_number/verify_phone_number.dart';
import 'package:food_order/feature/welcome/welcome.dart';
import 'package:food_order/feature/your_order/your_order.dart';

import '../../feature/home/home_page.dart';
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
      case Routers.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routers.featuredPartners:
        return MaterialPageRoute(
          builder: (_) => const Featured_Partners(),
          settings: settings,
        );
      case Routers.singleRestaurant:
        return MaterialPageRoute(
          builder: (_) => SingleRestaurantPage(),
          settings: settings,
        );
      case Routers.addOrder:
        return MaterialPageRoute(
            builder: (_) => const Add_Order(), settings: settings);
      case Routers.yourOrder:
        return MaterialPageRoute(
            builder: (_) => const Your_Order_Page(), settings: settings);
      case Routers.addPaymentMethod:
        return MaterialPageRoute(
            builder: (_) => Add_Payment_method_page(), settings: settings);
      case Routers.filter:
        return MaterialPageRoute(
            builder: (_) => Filter_Page(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: Text('No route defined')),
                ));
    }
  }
}
