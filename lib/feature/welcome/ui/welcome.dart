import 'package:flutter/material.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import '../../../core/widgets/elevated_button_app.dart';
import 'Name_And_Image.dart';
import 'Text_Welcom_And_Other.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Name_And_Image(),
          hSpace(40),
          Text_Welcom_And_Other(),
          hSpace(60),
          ElevatedButtonWidght(
            onPressed: () {
              context.pushNamed(Routers.login);
            },
          )
        ],
      ),
    );
  }
}
