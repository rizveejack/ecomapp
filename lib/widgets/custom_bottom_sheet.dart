import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class CustomBottonSheet extends StatelessWidget {
  const CustomBottonSheet({
    Key? key,
    required this.priceHeading,
    required this.price,
    required this.icon,
    required this.buttonText,
    this.onTap,
  }) : super(key: key);

  final String priceHeading;
  final String price;
  final Icon icon;
  final String buttonText;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SizedBox(
              height: double.maxFinite,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: priceHeading,
                      size: 10,
                      textColor: Colors.black,
                    ),
                    const SizedBox(height: 2),
                    CustomText(
                      text: price,
                      size: 19,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashFactory: InkRipple.splashFactory,
                  highlightColor: Colors.white.withOpacity(0.1),
                  splashColor: Colors.white.withOpacity(0.2),
                  onTap: onTap,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      icon,
                      const SizedBox(width: 5),
                      CustomText(
                        text: buttonText,
                        size: 15,
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
