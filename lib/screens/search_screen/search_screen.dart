import 'package:flutter/material.dart';

class SearchScren extends StatelessWidget {
  const SearchScren({Key? key}) : super(key: key);

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
        title: Container(
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
              Icon(
                Icons.search,
                color: Colors.grey.withOpacity(0.9),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text("Search Page"),
      ),
    );
  }
}
