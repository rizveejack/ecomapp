import 'package:flutter/material.dart';

import 'header_profile.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderProfile(),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.search),
            ],
          )
        ],
      ),
    );
  }
}
