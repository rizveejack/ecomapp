import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class SingleSlide extends StatelessWidget {
  const SingleSlide({
    Key? key,
    required this.slider,
    required this.slideIndex,
  }) : super(key: key);

  final List slider;
  final int slideIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            slider[slideIndex],
          ),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
        ),
      ),
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const CustomText(
              text: "Evira",
              isHeading: true,
              size: 23,
            ),
            const CustomText(
                size: 14,
                text:
                    "best ecommerce shop in the word \nof bal sal we sell best quality product"),
            const SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {},
                child: Row(
                  children: const [
                    Text(
                      'read more',
                      style: TextStyle(color: Colors.white70),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 16,
                    )
                  ],
                )),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
