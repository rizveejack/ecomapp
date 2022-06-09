import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';
import '../../widgets/product_card.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  late int _pageIndex = 0;

  void onCardTab(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () => onCardTab(index),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    decoration: BoxDecoration(
                      color: _pageIndex == index ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: CustomText(
                        text: "Jewlarry",
                        size: 12,
                        textColor:
                            _pageIndex == index ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          child: GridView.builder(
            itemCount: 26,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 280,
              // childAspectRatio: 6 / 9,
            ),
            itemBuilder: (_, index) {
              return const ProductCard();
            },
          ),
        ),
      ],
    );
  }
}
