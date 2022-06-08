import 'package:flutter/material.dart';

class CaroselDot extends StatelessWidget {
  const CaroselDot({Key? key, required this.slider, required this.slideIndex})
      : super(key: key);

  final List slider;
  final int slideIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(slider.length, (dotindex) {
          return Container(
            margin: const EdgeInsets.all(5),
            width: slideIndex == dotindex ? 30 : 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: slideIndex == dotindex
                  ? Colors.white
                  : Colors.white.withOpacity(0.5),
            ),
          );
        }),
      ),
    );
  }
}
