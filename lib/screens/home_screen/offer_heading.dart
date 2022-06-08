import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class OfferHeading extends StatelessWidget {
  const OfferHeading({
    Key? key,
    required this.headingText,
    required this.allText,
  }) : super(key: key);

  final String headingText;
  final String allText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: headingText,
          size: 22,
          isHeading: true,
          textColor: Colors.black,
        ),
        InkWell(
          onTap: () {},
          child: CustomText(
            text: allText,
            size: 12,
            isHeading: true,
            textColor: Colors.black,
          ),
        )
      ],
    );
  }
}
