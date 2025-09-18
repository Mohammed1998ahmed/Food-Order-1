import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/themes/colors.dart';
import 'package:food_order/core/widgets/elevated_button_app.dart';
import '../../core/helper/space.dart';
import '../../core/themes/styles.dart';
import 'data/data_Local.dart';
import 'ui/add_special_widget.dart';
import 'ui/choice_cookie_widget.dart';
import 'ui/details_order_widght.dart';
import 'ui/stack_image_widght.dart';

class Add_Order extends StatefulWidget {
  const Add_Order({super.key});

  @override
  State<Add_Order> createState() => _Add_OrderState();
}

class _Add_OrderState extends State<Add_Order> {
  String selectedFlavor = 'Cookies and Cream';
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null || args is! Map<String, dynamic>) {
      return const Center(child: Text("No data passed"));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Stack_Image_Widght(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Details_Order_Widght(),
                  const Choice_Cookie_Widget(),
                  ...Data_Local.flavors.expand((flavor) => [
                        RadioListTile<String>(
                          contentPadding: EdgeInsets.zero,
                          activeColor: Colors_App.primaryColor,
                          title: Text(flavor),
                          value: flavor,
                          groupValue: selectedFlavor,
                          onChanged: (value) {
                            setState(() {
                              selectedFlavor = value!;
                            });
                          },
                        ),
                        const Divider(
                            thickness: 0.6, color: Colors_App.grayLight2Color),
                      ]),
                  hSpace(20),
                  const Choice_Cookie_Widget(
                    title: 'Choice of Bottom Cookie',
                  ),
                  ...Data_Local.flavors.expand((flavor) => [
                        RadioListTile<String>(
                          contentPadding: EdgeInsets.zero,
                          activeColor: Colors_App.primaryColor,
                          title: Text(flavor),
                          value: flavor,
                          groupValue: selectedFlavor,
                          onChanged: (value) {
                            setState(() {
                              selectedFlavor = value!;
                            });
                          },
                        ),
                        const Divider(
                            thickness: 0.6, color: Colors_App.grayLight2Color),
                      ]),
                  hSpace(20),
                  const Add_Special_Widget(),
                  const Divider(),
                  hSpace(34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            counter > 0 ? --counter : null;
                          });
                        },
                        child: CircleAvatar(
                          radius: 40.r,
                          child: Center(
                            child: Icon(Icons.remove),
                          ),
                          backgroundColor:
                              Colors_App.grayLight2Color.withOpacity(0.2),
                        ),
                      ),
                      Text(
                        counter.toString(),
                        style: Styles_App.font20Blacklight,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            ++counter;
                          });
                        },
                        child: CircleAvatar(
                          radius: 40.r,
                          child: Center(
                            child: Icon(Icons.add),
                          ),
                          backgroundColor:
                              Colors_App.grayLight2Color.withOpacity(0.2),
                        ),
                      )
                    ],
                  ),
                  // Counter_Widget(counter: counter),
                  hSpace(34),
                  Center(
                    child: ElevatedButtonWidght(
                      onPressed: () {},
                      horizontal: 85.w,
                      vertical: 15.h,
                      name_button:
                          "Add to Order (\$${11.98 * counter})".toUpperCase(),
                      textStyle: Styles_App.font14whitebold,
                    ),
                  ),
                  hSpace(21),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
