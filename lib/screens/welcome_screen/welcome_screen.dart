import 'package:ecomapp/screens/index_screen.dart';
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
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.only(top: 30, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return const MainScreen();
                    }),
                  );
                },
                child: const Icon(Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
