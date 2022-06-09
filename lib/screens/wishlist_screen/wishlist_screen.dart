import 'package:flutter/material.dart';

import '../../widgets/app_bar_heading.dart';
import '../all_products/shop_products.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
          top: 50,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AppBarHeading(
              title: "My Wishlist",
              subTitle: "all of your beloved product",
            ),
            ShopProducts(),
          ],
        ),
      ),
    );
  }
}
