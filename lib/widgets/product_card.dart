import 'package:flutter/material.dart';

import '../screens/single_product_screen/single_product_screen.dart';
import 'custom_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Align(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) {
                        return const SingleProductScreen();
                      }),
                    );
                  },
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/banner.png"),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.only(top: 5, right: 5),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                    color: Colors.white,
                    iconSize: 15,
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline_rounded),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const CustomText(
            isellipsis: true,
            text: "Product name like as bal sal",
            size: 14,
            textColor: Colors.black,
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 18,
                  ),
                  CustomText(
                    text: "4.5",
                    size: 13,
                    textColor: Colors.black,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 13,
                width: 2,
                color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const CustomText(
                  text: "6,937 sold",
                  size: 12,
                  textColor: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const CustomText(
            text: "\$430.00",
            size: 18,
            isHeading: true,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
