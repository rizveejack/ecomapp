import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomText(
            text: "Description",
            size: 14,
            textColor: Colors.black,
            isHeading: true,
          ),
          SizedBox(height: 10),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
          ),
        ],
      ),
    );
  }
}
