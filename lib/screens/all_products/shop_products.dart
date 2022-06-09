import 'package:flutter/material.dart';

import '../../widgets/product_card.dart';

class ShopProducts extends StatelessWidget {
  const ShopProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 16,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 280,
        // childAspectRatio: 6 / 9,
      ),
      itemBuilder: (_, index) {
        return const ProductCard();
      },
    );
  }
}
