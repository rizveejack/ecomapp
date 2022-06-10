import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ProductColors extends StatelessWidget {
  const ProductColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomText(
          text: "Colors",
          size: 14,
          textColor: Colors.black,
          isHeading: true,
        ),
      ],
    );
  }
}
