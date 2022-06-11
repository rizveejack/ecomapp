import 'package:ecomapp/widgets/special_offer_card.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar_heading.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black87,
          size: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarHeading(
                title: "Special Offers.",
                subTitle: "Special offers on this week ",
              ),
              const SizedBox(height: 20),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const SizedBox(
                        height: 160,
                        child: SpecialOfferCard(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
