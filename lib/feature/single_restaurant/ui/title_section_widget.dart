import 'package:flutter/material.dart';

import '../../../core/themes/styles.dart';

class Title_Section_Widget extends StatelessWidget {
  const Title_Section_Widget({
    super.key,
    this.title,
  });
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title ?? "Featured Items",
        style: Styles_App.font20Blacklight,
      ),
    );
  }
}
