import 'package:ecomapp/screens/search_screen/search_screen.dart';
import 'package:ecomapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) {
            return const SearchScren();
          }),
        );
      },
      child: Container(
        width: double.maxFinite,
        height: 40,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomText(
              text: "Search your product",
              size: 14,
              textColor: Colors.black54,
            ),
            Icon(
              Icons.search,
              color: Colors.grey.withOpacity(0.9),
            ),
          ],
        ),
      ),
    );
  }
}
