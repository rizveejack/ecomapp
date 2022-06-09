import 'package:flutter/material.dart';

import '../../widgets/special_offer_card.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final List _slider = <String>[
    "assets/images/slide1.jpg",
    "assets/images/slide2.jpg",
    "assets/images/slide3.jpg",
  ];
  late int _slideIndex = 0;
  void onSlideChange(int index) {
    setState(() {
      _slideIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 160,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _slider.length,
                  onPageChanged: onSlideChange,
                  itemBuilder: (_, index) {
                    return const SpecialOfferCard();
                  })),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 200,
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(_slider.length, (dotindex) {
                  return Container(
                    width: _slideIndex == dotindex ? 16 : 4,
                    height: 4,
                    margin: const EdgeInsets.only(left: 4, right: 4),
                    decoration: BoxDecoration(
                      color: _slideIndex == dotindex
                          ? Colors.black
                          : Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
