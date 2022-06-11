import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class ProcedToCheckout extends StatelessWidget {
  const ProcedToCheckout({
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
              padding: const EdgeInsets.all(4),
              color: Colors.black,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CustomText(
                      text: "Total amaount",
                      size: 10,
                    ),
                    SizedBox(height: 5),
                    CustomText(
                      text: "\$430.00",
                      size: 19,
                    ),
                  ],
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
                      CustomText(
                        text: "Checkout",
                        size: 15,
                        textColor: Colors.black87,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 18,
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
