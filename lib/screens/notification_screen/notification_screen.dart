import 'package:ecomapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black54,
          size: 18,
        ),
        title: const CustomText(
          text: "All Notifications",
          size: 16,
          textColor: Colors.black54,
        ),
      ),
      body: ListView.builder(
          itemCount: 16,
          itemBuilder: (_, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.abc_rounded,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomText(
                          text: "This Title",
                          size: 16,
                          textColor: Colors.black54,
                        ),
                        CustomText(
                          text: "This is notice Body",
                          size: 13,
                          textColor: Colors.black38,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
