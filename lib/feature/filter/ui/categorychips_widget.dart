import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

class CategoryChips extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final Function(String) onSelected;
  final EdgeInsetsGeometry? padding;
  final double? radius;
  const CategoryChips({
    Key? key,
    required this.items,
    required this.selectedItem,
    required this.onSelected,
    this.padding,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      children: items
          .map((cat) => ChoiceChip(
                padding: padding ??
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 19.w),
                selectedColor: Colors_App.primaryColor,
                backgroundColor: Colors_App.lighetwhiteColor,
                showCheckmark: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 8.r),
                  side: BorderSide(color: Colors.transparent),
                ),
                label: cat == selectedItem
                    ? Text(cat, style: Styles_App.font12whiteSemiBold)
                    : Text(cat,
                        style: Styles_App.font12whiteSemiBold.copyWith(
                          color: Colors_App.blackColor,
                        )),
                selected: cat == selectedItem,
                onSelected: (_) => onSelected(cat),
              ))
          .toList(),
    );
  }
}
