import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ShopHeader extends StatelessWidget {
  const ShopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomText(
              text: "Shop Products",
              size: 25,
              textColor: Colors.black87,
            ),
            CustomText(
              text: "Check your Products",
              size: 15,
              textColor: Colors.black45,
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_list_rounded),
        ),
      ],
    );
  }
}
