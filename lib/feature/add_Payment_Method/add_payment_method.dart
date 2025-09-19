import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/widgets/elevated_button_app.dart';
import 'ui/details_text_widght.dart';
import 'ui/scan_card_button_widgets.dart';
import 'ui/text_field_widghts.dart';

// ignore: must_be_immutable
class Add_Payment_method_page extends StatelessWidget {
  Add_Payment_method_page({super.key});
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                ),
              ),
              hSpace(24),
              Details_Text_Widght(),
              hSpace(34),
              Text_Field_Widghts(
                  controller: controller,
                  controller1: controller1,
                  controller2: controller2),
              hSpace(308),
              Center(
                child: ElevatedButtonWidght(
                  onPressed: () {},
                  name_button: 'Add Card'.toUpperCase(),
                  horizontal: 132.w,
                  vertical: 16.h,
                ),
              ),
              hSpace(16),
              Scan_Card_Button_Widgets()
            ],
          ),
        ),
      ),
    );
  }
}
