import 'package:flutter/material.dart';

import '../all_products/shop_header.dart';
import '../all_products/shop_products.dart';

class AllCatScreen extends StatelessWidget {
  const AllCatScreen({Key? key}) : super(key: key);

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
            ShopHeader(),
            SizedBox(height: 20),
            ShopProducts(),
          ],
        ),
      ),
    );
  }
}
