import 'package:flutter/material.dart';

import 'customslider.dart';
import 'header_profile.dart';
import 'offer_heading.dart';
import 'search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderProfile(),
            const SizedBox(height: 20),
            const SearchBar(),
            const SizedBox(height: 20),
            const OfferHeading(),
            const SizedBox(height: 20),
            const CustomSlider(),
          ],
        ),
      ),
    );
  }
}
