import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helper/space.dart';
import '../../core/themes/colors.dart';
import '../../core/themes/styles.dart';

class ProfileLocationPage extends StatefulWidget {
  const ProfileLocationPage({super.key});

  @override
  State<ProfileLocationPage> createState() => _ProfileLocationPageState();
}

class _ProfileLocationPageState extends State<ProfileLocationPage> {
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
                    Icons.arrow_back_ios,
                    color: Colors_App.blackColor,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text('Search Address',
                    style: Styles_App.font24BlackRegular),
                centerTitle: true,
              ),
              hSpace(24),

              // ignore: sized_box_for_whitespace

              TextFromFeild(),
              hSpace(16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Recent address',
                        style: Styles_App.font16BlackRegular
                            .copyWith(color: Colors_App.greyColor),
                      ),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {
                          _locationController.clear();
                          filteredSuggestions.clear();
                          setState(() {});
                        },
                        child: Text(
                          'Clear all',
                          style: Styles_App.font12GrayLight,
                        ))
                  ],
                ),
              ),
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
            hintText: 'Enter a new address',
            hintStyle: Styles_App.font16grayRegular,
            border: InputBorder.none,
          ),
          textInputAction: TextInputAction.done,
          onSubmitted: (value) {},
        ),
      ),
    );
  }
}
