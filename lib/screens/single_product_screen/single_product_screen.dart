import 'package:flutter/material.dart';

import '../../widgets/custom_bottom_sheet.dart';
import 'product_colors.dart';
import 'product_details.dart';
import 'product_heading.dart';
import 'product_image_slider.dart';
import 'product_size.dart';
import 'related_products.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ProductHeading(),
                SizedBox(height: 20),
                ProductDetails(),
                SizedBox(height: 20),
                ProductSize(),
                SizedBox(height: 20),
                ProductColors(),
                SizedBox(height: 20),
                RelatedProducts(),
                SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: const CustomBottonSheet(
        buttonText: "AddtoCart",
        icon: Icon(
          Icons.shopping_bag,
          color: Colors.white,
          size: 16,
        ),
        price: "\$4230.00",
        priceHeading: "Price",
      ),
    );
  }
}
