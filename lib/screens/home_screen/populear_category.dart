import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class PopulearCategory extends StatelessWidget {
  const PopulearCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        mainAxisExtent: 80,
        // childAspectRatio: 6 / 9,
      ),
      itemBuilder: (_, index) {
        return InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(Icons.search),
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomText(
                text: "Clothing",
                size: 12,
                textColor: Colors.black,
                isHeading: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
