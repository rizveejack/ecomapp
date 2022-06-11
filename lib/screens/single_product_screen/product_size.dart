import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ProductSize extends StatefulWidget {
  const ProductSize({Key? key}) : super(key: key);

  @override
  State<ProductSize> createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  late int slideIndex = -1;
  void setSize(int index) {
    setState(() {
      slideIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Size",
            size: 14,
            textColor: Colors.black,
            isHeading: true,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(5, (dotindex) {
              return GestureDetector(
                onTap: () {
                  setSize(dotindex);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.black45, width: 2),
                    color: slideIndex == dotindex
                        ? Colors.black87
                        : Colors.transparent,
                  ),
                  child: Center(
                      child: CustomText(
                    text: "Xl",
                    size: 16,
                    textColor:
                        slideIndex == dotindex ? Colors.white : Colors.black54,
                  )),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
