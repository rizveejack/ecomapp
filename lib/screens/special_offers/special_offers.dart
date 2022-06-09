import 'package:ecomapp/widgets/custom_text.dart';
import 'package:ecomapp/widgets/special_offer_card.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black54,
          size: 18,
        ),
        title: const CustomText(
          text: "Special Offers",
          size: 16,
          textColor: Colors.black54,
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (_, index) {
            return Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: const SizedBox(
                height: 160,
                child: SpecialOfferCard(),
              ),
            );
          }),
    );
  }
}
