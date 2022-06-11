import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class BottomPrice extends StatelessWidget {
  const BottomPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: double.maxFinite,
              padding: const EdgeInsets.all(15),
              color: Colors.black,
              child: const Center(
                child: CustomText(
                  text: "\$430.00",
                  size: 19,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                height: double.maxFinite,
                padding: const EdgeInsets.all(15),
                color: Colors.amber,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.shopping_bag,
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: "Add to cart",
                        size: 15,
                        textColor: Colors.black87,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
