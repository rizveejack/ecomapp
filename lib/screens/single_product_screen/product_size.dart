import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ProductSize extends StatelessWidget {
  const ProductSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomText(
          text: "Size",
          size: 14,
          textColor: Colors.black,
          isHeading: true,
        ),
      ],
    );
  }
}
