import 'package:flutter/material.dart';

import 'single_slide.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  final List slider = <String>[
    "assets/images/slide1.jpg",
    "assets/images/slide2.jpg",
    "assets/images/slide3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: slider.length,
          itemBuilder: (_, index) {
            return SingleSlide(slider: slider, slideIndex: index);
          }),
    );
  }
}
