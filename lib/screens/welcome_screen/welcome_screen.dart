import 'package:flutter/material.dart';

import 'carosel_dot.dart';
import 'single_slide.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final List slider = <String>[
    "assets/images/slide1.jpg",
    "assets/images/slide2.jpg",
    "assets/images/slide3.jpg",
  ];

  late int _pageIndex = 0;
  void onScreenChanged(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            child: PageView.builder(
                onPageChanged: onScreenChanged,
                itemCount: slider.length,
                itemBuilder: (_, index) {
                  return SingleSlide(slider: slider, slideIndex: index);
                }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CaroselDot(slider: slider, slideIndex: _pageIndex),
          ),
        ],
      ),
    );
  }
}
