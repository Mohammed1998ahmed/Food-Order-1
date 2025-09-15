import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/themes/colors.dart';

import '../../core/themes/styles.dart';
import 'ui/Select_Type_Location.dart';

class SelectLocationPage extends StatelessWidget {
  const SelectLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            hSpace(10),
            AppBar(
              backgroundColor: Colors_App.whiteColor,
              leading: IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            hSpace(24),
            Container(
              child: Text('Find restaurants near you ',
                  style: Styles_App.font24BlackRegular),
            ),
            hSpace(10),
            // ignore: sized_box_for_whitespace
            Container(
              width: 330.w,
              child: Text(
                  'Please enter your location or allow access to your location to find restaurants near you.',
                  textAlign: TextAlign.center,
                  style: Styles_App.font16grayRegular),
            ),
            hSpace(34),
            const Select_Type_Location(),
            hSpace(20),
            const Select_Type_Location(
              colorIcon: Colors_App.greyColor,
              colorTextName: Colors_App.greyColor,
              colorborder: Colors_App.greyColor,
              colorbackground: Colors_App.lightGreyColor,
              icon: Icons.location_on_outlined,
              name_button: 'Enter a new address',
            ),
          ],
        ),
      ),
    );
  }
}
