import 'package:ecomapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/product_card.dart';

class RelatedProducts extends StatelessWidget {
  const RelatedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Related Products",
            size: 20,
            textColor: Colors.black87,
          ),
          GridView.builder(
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
          ),
        ],
      ),
    );
  }
}
