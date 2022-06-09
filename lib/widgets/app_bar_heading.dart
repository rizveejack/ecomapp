import 'package:flutter/material.dart';

import 'custom_text.dart';

class AppBarHeading extends StatelessWidget {
  const AppBarHeading({Key? key, required this.title, this.subTitle = ''})
      : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          size: 25,
          textColor: Colors.black87,
        ),
        CustomText(
          text: subTitle,
          size: 15,
          textColor: Colors.black45,
        ),
      ],
    );
  }
}
