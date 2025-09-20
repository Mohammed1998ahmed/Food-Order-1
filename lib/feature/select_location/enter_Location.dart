import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_order/core/helper/extenations.dart';
import 'package:food_order/core/helper/space.dart';
import 'package:food_order/core/routers/router.dart';
import 'package:food_order/core/themes/colors.dart';

import '../../core/themes/styles.dart';

class EnterAddressPage extends StatefulWidget {
  const EnterAddressPage({super.key});

  @override
  State<EnterAddressPage> createState() => _EnterAddressPageState();
}

class _EnterAddressPageState extends State<EnterAddressPage> {
  final TextEditingController _locationController = TextEditingController();

  final List<String> allSuggestions = [
    'King Fahd Road',
    'Olaya Street',
    'Al Malaz',
    'Riyadh Park',
    'Al Nakheel Mall',
    'Al Tahlia Street',
    'Al Yasmin District',
    'King Fahd Road',
    'Olaya Street',
    'Al Malaz',
    'Riyadh Park',
    'Al Nakheel Mall',
    'Al Tahlia Street',
    'Al Yasmin District',
  ];

  List<String> filteredSuggestions = [];

  @override
  void initState() {
    super.initState();
    _locationController.addListener(_filterSuggestions);
  }

  void _filterSuggestions() {
    setState(() {
      filteredSuggestions = allSuggestions
          .where((place) => place
              .toLowerCase()
              .contains(_locationController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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

              hSpace(20),
              TextFromFeild(),
              hSpace(16),
              // Display suggestions
              if (_locationController.text.isNotEmpty &&
                  filteredSuggestions.isNotEmpty)
                ListAddress(),
            ],
          ),
        ),
      ),
    );
  }

  Container ListAddress() {
    return Container(
      width: 330.w,
      height: 200.h,
      margin: EdgeInsets.only(top: 8.h),
      decoration: BoxDecoration(
        color: Colors_App.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors_App.greyColor,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListView.builder(
        shrinkWrap: false,
        itemCount: filteredSuggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:
                Icon(Icons.location_on_outlined, color: Colors_App.greyColor),
            title: Text(
              filteredSuggestions[index],
              style: Styles_App.font16grayRegular,
            ),
            onTap: () {
              _locationController.text = filteredSuggestions[index];
              filteredSuggestions.clear();
              setState(() {});
            },
          );
        },
      ),
    );
  }

  Padding TextFromFeild() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors_App.lightGreyColor,
          border: Border.all(color: Colors_App.greyColor),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: TextField(
          controller: _locationController,
          style: Styles_App.font16grayRegular,
          decoration: InputDecoration(
            icon: Icon(Icons.location_on_outlined, color: Colors_App.greyColor),
            suffixIcon: Padding(
              padding: EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  _locationController.clear();
                  filteredSuggestions.clear();
                  setState(() {});
                },
                child: Container(
                  width: 20.w,
                  height: 20.w,
                  decoration: const BoxDecoration(
                    color: Colors_App.greyColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      color: Colors_App.blackColor,
                      size: 14.sp,
                    ),
                  ),
                ),
              ),
            ),
            hintText: 'Enter a new address',
            hintStyle: Styles_App.font16grayRegular,
            border: InputBorder.none,
          ),
          textInputAction: TextInputAction.done,
          onSubmitted: (value) {
            context.pushNamed(Routers.navBarButtom);
          },
        ),
      ),
    );
  }
}
