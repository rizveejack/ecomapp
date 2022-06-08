import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.text,
      this.isHeading = false,
      this.textColor = Colors.white,
      required this.size,
      this.isellipsis = false})
      : super(key: key);
  final String text;
  final double size;
  final Color textColor;
  final bool isHeading;
  final bool isellipsis;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        overflow: isellipsis ? TextOverflow.ellipsis : TextOverflow.visible,
        height: 1.2,
        fontSize: size,
        fontWeight: isHeading ? FontWeight.bold : FontWeight.normal,
        color: textColor,
      ),
    );
  }
}
