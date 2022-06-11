import 'package:flutter/material.dart';

import 'shop_header.dart';
import 'shop_products.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({Key? key}) : super(key: key);

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
            ShopProducts(),
          ],
        ),
      ),
    );
  }
}
