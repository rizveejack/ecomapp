import 'package:flutter/material.dart';

import '../../widgets/custom_text.dart';

class SearchScren extends StatelessWidget {
  const SearchScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black54,
          size: 18,
        ),
        title: CustomText(
          text: "Search Result",
          size: 16,
          textColor: Colors.black54,
        ),
      ),
      body: Center(
        child: Text("Search Screen"),
      ),
    );
  }
}
