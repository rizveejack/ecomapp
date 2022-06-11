import 'package:ecomapp/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar_heading.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black87,
          size: 22,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarHeading(
                title: "Notifications",
                subTitle: "All our weekly notifications",
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 16,
                  itemBuilder: (_, index) {
                    return const ListTile(
                      leading: SizedBox(
                        height: double.infinity,
                        child: Icon(
                          Icons.star,
                          size: 30,
                        ),
                      ),
                      title: CustomText(
                        text: "This Title",
                        size: 16,
                        textColor: Colors.black54,
                      ),
                      subtitle: CustomText(
                        text: "This is notice Body",
                        size: 13,
                        textColor: Colors.black38,
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
