import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/space.dart';
import '../../../core/themes/colors.dart';
import 'textFormField_payment_widght.dart';

class Text_Field_Widghts extends StatelessWidget {
  const Text_Field_Widghts({
    super.key,
    required this.controller,
    required this.controller1,
    required this.controller2,
  });

  final TextEditingController controller;
  final TextEditingController controller1;
  final TextEditingController controller2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 54.h,
          child: TextFormField_Payment_Widght(
            controller: controller,
            prefixIcon: Icon(
              Icons.payment,
              color: Colors_App.grayLightColor,
            ),
          ),
        ),
        hSpace(16),
        Container(
          width: 370.w,
          height: 54.h,
          child: Row(
            children: [
              Expanded(
                child: TextFormField_Payment_Widght(
                  controller: controller1,
                  hintText: 'MM/YY',
                ),
              ),
              wSpace(16),
              Expanded(
                child: TextFormField_Payment_Widght(
                  controller: controller2,
                  hintText: 'CVC',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
