import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class OfferHeading extends StatelessWidget {
  const OfferHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomText(
          text: "Special Offers",
          size: 22,
          isHeading: true,
          textColor: Colors.black,
        ),
        InkWell(
          onTap: () {},
          child: const CustomText(
            text: "All offer",
            size: 12,
            isHeading: true,
            textColor: Colors.black,
          ),
        )
      ],
    );
  }
}
