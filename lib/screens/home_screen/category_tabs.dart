import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

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
            itemCount: 8,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height),
            ),
            itemBuilder: (_, index) {
              return SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      child: Image.asset(
                        "assets/images/banner.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const CustomText(
                      isellipsis: true,
                      text: "Product name like as bal sal",
                      size: 14,
                      textColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              size: 18,
                            ),
                            CustomText(
                              text: "4.5",
                              size: 13,
                              textColor: Colors.black,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 13,
                          width: 2,
                          color: Colors.black,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const CustomText(
                            text: "6,937 sold",
                            size: 12,
                            textColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomText(
                      text: "\$430.00",
                      size: 18,
                      isHeading: true,
                      textColor: Colors.black,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
