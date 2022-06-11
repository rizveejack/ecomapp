import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ProductCounter extends StatefulWidget {
  const ProductCounter({Key? key}) : super(key: key);

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  late int _productUnit = 1;

  void addItem() {
    setState(() {
      if (_productUnit >= 1) {
        _productUnit++;
      }
    });
  }

  void removeItem() {
    setState(() {
      if (_productUnit > 1) {
        _productUnit--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: addItem,
          child: const Icon(
            Icons.add,
            size: 14,
          ),
        ),
        CustomText(
          text: "$_productUnit",
          size: 12,
          textColor: Colors.black87,
        ),
        InkWell(
          onTap: removeItem,
          child: const Icon(
            Icons.remove,
            size: 14,
          ),
        ),
      ],
    );
  }
}
