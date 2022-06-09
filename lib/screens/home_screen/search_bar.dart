import 'package:flutter/material.dart';

import '../search_screen/search_screen.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              cursorColor: Colors.black.withOpacity(0.3),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search your product..',
                hintStyle: TextStyle(fontSize: 14),

                isDense: true, // Added this
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return const SearchScren();
                }),
              );
            }),
            child: Icon(
              Icons.search,
              color: Colors.grey.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }
}
