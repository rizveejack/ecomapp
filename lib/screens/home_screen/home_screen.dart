import 'package:flutter/material.dart';

import 'category_tabs.dart';
import 'customslider.dart';
import 'header_profile.dart';
import 'offer_heading.dart';
import 'populear_category.dart';
import 'search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderProfile(),
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 20),
            OfferHeading(headingText: "Special Offers", allText: "See All"),
            SizedBox(height: 20),
            CustomSlider(),
            SizedBox(height: 20),
            PopulearCategory(),
            SizedBox(height: 20),
            OfferHeading(headingText: "Most Popular", allText: "See All"),
            SizedBox(height: 20),
            CategoryTab()
          ],
        ),
      ),
    );
  }
}
