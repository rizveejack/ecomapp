import 'package:flutter/material.dart';

import '../../widgets/app_bar_heading.dart';

class ShopHeader extends StatelessWidget {
  const ShopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppBarHeading(
          title: 'Shop Products.',
          subTitle: "Check your products.",
        ),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.filter_list_rounded),
        ),
      ],
    );
  }
}
