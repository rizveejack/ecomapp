import 'package:flutter/material.dart';

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
        children: [
          Icon(
            Icons.search,
            color: Colors.grey.withOpacity(0.9),
          ),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                hintText: 'Even Densed TextFiled',
                isDense: true, // Added this
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          Icon(
            Icons.equalizer,
            color: Colors.grey.withOpacity(0.9),
          ),
        ],
      ),
    );
  }
}
