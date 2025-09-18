import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../../core/themes/styles.dart';

// ignore: must_be_immutable
class Counter_Widget extends StatefulWidget {
  Counter_Widget({
    super.key,
    required this.counter,
  });

  int counter;

  @override
  State<Counter_Widget> createState() => _Counter_WidgetState();
}

class _Counter_WidgetState extends State<Counter_Widget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.counter > 0 ? --widget.counter : null;
            });
          },
          child: CircleAvatar(
            radius: 40.r,
            child: Center(
              child: Icon(Icons.remove),
            ),
            backgroundColor: Colors_App.grayLight2Color.withOpacity(0.2),
          ),
        ),
        Text(
          widget.counter.toString(),
          style: Styles_App.font20Blacklight,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              ++widget.counter;
            });
          },
          child: CircleAvatar(
            radius: 40.r,
            child: Center(
              child: Icon(Icons.add),
            ),
            backgroundColor: Colors_App.grayLight2Color.withOpacity(0.2),
          ),
        )
      ],
    );
  }
}
