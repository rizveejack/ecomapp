import 'package:flutter/material.dart';

import '../../widgets/app_bar_heading.dart';
import '../all_products/shop_products.dart';

class AllCatScreen extends StatelessWidget {
  const AllCatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black87,
          size: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AppBarHeading(
                title: "Caterory.",
                subTitle: "30% off for all products.",
              ),
              SizedBox(height: 20),
              ShopProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
