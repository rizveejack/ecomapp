import 'package:ecomapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';

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
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  CustomText(
                                    text: "30%",
                                    size: 40,
                                    textColor: Colors.black,
                                  ),
                                  CustomText(
                                    text: "Today's Special Offers",
                                    size: 14,
                                    textColor: Colors.black,
                                    isHeading: true,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text:
                                        "Get discount for every order just for todays",
                                    size: 12,
                                    textColor: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 140,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/banner.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
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
