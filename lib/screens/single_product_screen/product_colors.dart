import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ProductColors extends StatefulWidget {
  const ProductColors({Key? key}) : super(key: key);

  @override
  State<ProductColors> createState() => _ProductColorsState();
}

class _ProductColorsState extends State<ProductColors> {
  late int slideIndex = -1;
  void setColors(int index) {
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
            text: "Colors",
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
                  setColors(dotindex);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: slideIndex == dotindex
                          ? Colors.black45
                          : Colors.transparent,
                      width: 2,
                    ),
                    color: Colors.red,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
