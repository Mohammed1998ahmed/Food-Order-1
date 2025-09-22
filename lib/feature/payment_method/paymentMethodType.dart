import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/styles.dart';
import 'ui/paymentMethodTile.dart';

class PaymentMethodTypePAge extends StatelessWidget {
  const PaymentMethodTypePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                    )),
                Container(
                  width: 260.w,
                  alignment: Alignment.center,
                  child: Text(
                    'Payment Methods',
                    style: Styles_App.font16BlacksemiBold,
                  ),
                )
              ],
            ),
            PaymentMethodTile(
              title: 'PayPal',
              status: 'Default Payment',
              imagePath: 'assets/image/P.png',
              onTap: () {
                Navigator.pushNamed(context, '/paypal');
              },
            ),
            PaymentMethodTile(
              title: 'MasterCard',
              status: 'Not Default',
              imagePath: 'assets/image/C.png',
              onTap: () {
                Navigator.pushNamed(context, '/mastercard');
              },
            ),
            PaymentMethodTile(
              title: 'Visa',
              status: 'Not Default',
              imagePath: 'assets/image/V.png',
              onTap: () {
                Navigator.pushNamed(context, '/visa');
              },
            ),
          ],
        ),
      ),
    );
  }
}
