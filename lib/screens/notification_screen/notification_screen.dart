import 'package:ecomapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
          text: "All Notifications",
          size: 16,
          textColor: Colors.black54,
        ),
      ),
      body: Center(
        child: Text("notifications"),
      ),
    );
  }
}
