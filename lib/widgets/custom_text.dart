import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.isHeading = false,
      this.textColor = Colors.white,
      required this.size})
      : super(key: key);
  final String text;
  final double size;
  final Color textColor;
  final bool isHeading;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: isHeading ? FontWeight.bold : FontWeight.normal,
        color: textColor,
      ),
    );
  }
}
