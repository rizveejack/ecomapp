import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ProductHeading extends StatelessWidget {
  const ProductHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black, width: 1),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                text: "Product Heading",
                size: 21,
                isHeading: true,
                textColor: Colors.black,
                isellipsis: true,
              ),
              IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline_rounded))
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const CustomText(
                  text: "Product Heading",
                  size: 12,
                  textColor: Colors.black,
                ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.star,
                size: 16,
              ),
              const SizedBox(width: 2),
              const CustomText(
                text: "4.8 (4749 reviews)",
                size: 12,
                textColor: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
