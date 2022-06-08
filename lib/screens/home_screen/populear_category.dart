import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class PopulearCategory extends StatelessWidget {
  const PopulearCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: 8,
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
                text: "Cloth",
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
